	.section	.text
	.align	32
	#Procedure 0x401a60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.19
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, 5
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_8
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.6
	mov	ecx, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rsp, rsp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rsp, rsp
	mov	r14d, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	nop	
	mov	qword ptr [rip + separator], OFFSET FLAT:.str.11
	mov	qword ptr [rip + sentinel_length],  1
	mov	byte ptr [rip + separator_ends_record],  1
	jmp	.label_30
.label_42:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
	nop	
.label_30:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rbp, rbp
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x61
	mov	rbp, rbp
	jle	.label_40
	mov	rbp, rbp
	cmp	eax, 0x73
	je	.label_42
	mov	rbp, rbp
	cmp	eax, 0x72
	je	.label_43
	mov	rsp, rsp
	cmp	eax, 0x62
	jne	.label_32
	mov	byte ptr [rip + separator_ends_record],  0
	nop	
	jmp	.label_30
.label_43:
	mov	rsp, rsp
	mov	qword ptr [rip + sentinel_length],  0
	mov	rsp, rsp
	jmp	.label_30
.label_40:
	lea	rsi, [rsi]
	cmp	eax, -1
	jne	.label_50
	mov	rbp, qword ptr [rip + separator]
	mov	rsp, rsp
	mov	cl, byte ptr [rbp]
	cmp	qword ptr [rip + sentinel_length],  0
	mov	rbp, rbp
	je	.label_51
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	test	cl, cl
	mov	rbp, rbp
	je	.label_11
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
.label_11:
	mov	qword ptr [rip + sentinel_length],  rax
	mov	qword ptr [rip + match_length],  rax
	lea	rsi, [rsi]
	jmp	.label_22
.label_51:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_26
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + compiled_separator],  xmm0
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:compiled_separator_fastmap
	movq	xmm0, rax
	lea	rdi, [rdi]
	movups	xmmword ptr [rip + label_27],  xmm0
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:compiled_separator
	mov	rdi, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_re_compile_pattern
	mov	rsp, rsp
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_38
	nop	
	mov	rax, qword ptr [rip + sentinel_length]
.label_22:
	mov	rsp, rsp
	mov	qword ptr [rip + read_size],  0x2000
	mov	edx, 0x2000
	cmp	rax, 0x1000
	jae	.label_41
	lea	rdi, [rdi]
	mov	ecx, 0x2000
	mov	rbp, rbp
	jmp	.label_45
.label_41:
	movabs	rsi, 0x7ffffffffffffffe
	nop	word ptr cs:[rax + rax]
.label_52:
	lea	rsi, [rsi]
	test	rdx, rdx
	lea	rdi, [rdi]
	js	.label_13
	lea	rcx, [rdx + rdx]
	mov	qword ptr [rip + read_size],  rcx
	mov	rsp, rsp
	and	rdx, rsi
	cmp	rax, rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jae	.label_52
.label_45:
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	or	rdx, 1
	nop	
	add	rdx, rax
	lea	rdi, [rdi]
	lea	rdi, [rdx + rdx]
	mov	qword ptr [rip + G_buffer_size],  rdi
	mov	rsp, rsp
	cmp	rdx, rdi
	jae	.label_13
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_13
	call	xmalloc
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	qword ptr [rip + G_buffer],  rbp
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rip + sentinel_length]
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_28
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + separator]
	lea	rdx, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	memcpy
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rsp, rsp
	jmp	.label_37
.label_28:
	lea	rsi, [rsi]
	inc	rbp
.label_37:
	mov	qword ptr [rip + G_buffer],  rbp
	movsxd	rax, dword ptr [rip + optind]
	nop	
	cmp	eax, r14d
	lea	rax, [r15 + rax*8]
	mov	ecx, OFFSET FLAT:main.default_file_list
	cmovl	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r14, qword ptr [rcx]
	nop	
	mov	r13b, 1
	lea	rdi, [rdi]
	xor	r15d, r15d
	test	r14, r14
	mov	rsp, rsp
	jne	.label_39
	mov	bl, 1
	jmp	.label_49
.label_19:
	test	rbp, rbp
	js	.label_21
	lea	rdi, [rdi]
	mov	rdi, r13
	call	fileno
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	tac_seekable
	mov	r13b, al
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	jmp	.label_34
.label_39:
	movzx	eax, byte ptr [r14]
	nop	
	cmp	eax, 0x2d
	jne	.label_18
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 1], 0
	je	.label_23
.label_18:
	nop	
	xor	ebp, ebp
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	call	open
	lea	rdi, [rdi]
	mov	r12d, eax
	nop	
	test	r12d, r12d
	mov	rsp, rsp
	jns	.label_29
	call	__errno_location
	mov	r12d, dword ptr [rax]
	nop	
	xor	ebx, ebx
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	nop	
	mov	rsi, r14
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r12d
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	jmp	.label_44
.label_23:
	mov	byte ptr [rip + have_read_stdin],  1
	lea	rsi, [rsi]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	bpl, 1
.label_29:
	xor	esi, esi
	mov	edx, 2
	lea	rdi, [rdi]
	mov	edi, r12d
	mov	rbp, rbp
	call	lseek
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	js	.label_53
	mov	edi, r12d
	call	isatty
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_16
.label_53:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], ebp
	mov	rbp, rbp
	cmp	qword ptr [rip + temp_stream.tempfile],  0
	je	.label_20
	nop	
	mov	byte ptr [rsp + 0x27], r13b
	mov	rsp, rsp
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	clearerr_unlocked
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	call	rpl_fseeko
	test	eax, eax
	js	.label_33
	nop	
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	fileno
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edi, eax
	call	ftruncate
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_35
.label_33:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_48
.label_20:
	mov	edi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	call	getenv
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.45
	cmove	rbp, rax
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.46
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	mfile_name_concat
	mov	rbp, rbp
	mov	qword ptr [rip + temp_stream.tempfile],  rax
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_14
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x27], r13b
	mov	rdi, rax
	call	mkstemp_safer
	lea	rdi, [rdi]
	mov	ebx, eax
	test	ebx, ebx
	mov	rbp, rbp
	js	.label_25
	mov	esi, OFFSET FLAT:.str.49
	mov	edi, ebx
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rip + temp_stream.tmp_fp],  rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_31
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	unlink
.label_35:
	mov	r13, qword ptr [rip + temp_stream.tmp_fp]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rip + temp_stream.tempfile]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_36:
	mov	rsi, qword ptr [rip + G_buffer]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rip + read_size]
	mov	rsp, rsp
	mov	edi, r12d
	call	safe_read
	mov	rsp, rsp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_17
	lea	rdi, [rdi]
	cmp	rbx, -1
	je	.label_47
	mov	rdi, qword ptr [rip + G_buffer]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	call	fwrite_unlocked
	mov	rbp, rbp
	add	rbp, rbx
	lea	rdi, [rdi]
	cmp	rax, rbx
	je	.label_36
	jmp	.label_12
.label_16:
	mov	byte ptr [rsp + 0x27], r13b
	mov	edi, r12d
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	tac_seekable
	lea	rdi, [rdi]
	mov	r13b, al
	lea	rsi, [rsi]
	jmp	.label_34
.label_14:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x27], r13b
	nop	
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	ebp, dword ptr [rsp + 0x14]
	nop	
	jmp	.label_34
.label_25:
	lea	rdi, [rdi]
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	jmp	.label_46
.label_17:
	mov	rdi, r13
	call	fflush_unlocked
	mov	rsp, rsp
	test	eax, eax
	je	.label_19
.label_12:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_24
.label_47:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, r14
.label_24:
	call	quotearg_n_style_colon
.label_48:
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	call	error
	mov	ebp, dword ptr [rsp + 0x14]
	jmp	.label_34
.label_31:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r13d
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	mov	edi, ebx
	lea	rdi, [rdi]
	call	close
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	nop	
	call	unlink
.label_46:
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	free
	mov	rbp, rbp
	mov	qword ptr [rip + temp_stream.tempfile],  0
.label_21:
	xor	r13d, r13d
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0x14]
	nop	word ptr [rax + rax]
.label_34:
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	jne	.label_15
	lea	rsi, [rsi]
	mov	edi, r12d
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	test	eax, eax
	je	.label_15
	nop	
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r14
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_15:
	lea	rdi, [rdi]
	test	r13b, r13b
	nop	
	setne	bl
	mov	r13b, byte ptr [rsp + 0x27]
.label_44:
	and	bl, r13b
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	r14, qword ptr [rax + r15*8 + 8]
	lea	rsi, [rsi]
	inc	r15
	lea	rdi, [rdi]
	test	r14, r14
	mov	r13b, bl
	lea	rdi, [rdi]
	jne	.label_39
.label_49:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rip + output.bytes_in_buffer]
	mov	rbp, rbp
	mov	rcx, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:output.buffer
	lea	rsi, [rsi]
	mov	esi, 1
	call	fwrite_unlocked
	lea	rdi, [rdi]
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	mov	rbp, rbp
	mov	al, byte ptr [rip + have_read_stdin]
	and	al, 1
	je	.label_10
	lea	rdi, [rdi]
	xor	edi, edi
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jns	.label_10
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	error
.label_10:
	lea	rsi, [rsi]
	not	bl
	and	bl, 1
	mov	rbp, rbp
	movzx	eax, bl
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_13:
	mov	rsp, rsp
	call	xalloc_die
.label_50:
	cmp	eax, 0xffffff7d
	je	.label_54
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	nop	
	jne	.label_32
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_54:
	nop	
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.14
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_32:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_26:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_38:
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl tac_seekable
	.type tac_seekable, @function
tac_seekable:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	mov	rcx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	ebp, edi
	mov	r12, qword ptr [rip + separator]
	lea	rdi, [rdi]
	mov	r13b, byte ptr [r12]
	nop	
	mov	rax, qword ptr [rip + match_length]
	mov	qword ptr [rsp + 0x10], rax
	xor	edx, edx
	mov	rax, rcx
	lea	rsi, [rsi]
	div	qword ptr [rip + read_size]
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_90
	lea	rdi, [rdi]
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rsi, rcx
	call	lseek
	lea	rsi, [rsi]
	test	rax, rax
	jns	.label_57
	mov	rsp, rsp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	ebx, ebp
	mov	rbp, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rbp
	mov	ebp, ebx
	mov	rsp, rsp
	call	error
	nop	
	jmp	.label_57
.label_90:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rcx
.label_57:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rbp, rbp
	mov	rdx, qword ptr [rip + read_size]
	mov	rsp, rsp
	mov	edi, ebp
	call	safe_read
	nop	
	mov	r14, rax
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_63
	nop	word ptr cs:[rax + rax]
.label_94:
	mov	rsp, rsp
	test	r14, r14
	nop	
	jne	.label_63
	mov	rsi, qword ptr [rip + read_size]
	neg	rsi
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsp, rsp
	call	lseek
	nop	
	test	rax, rax
	jns	.label_98
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	ebx, ebp
	mov	rbp, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ebp, ebx
	mov	rbp, rbp
	call	error
.label_98:
	mov	rbx, qword ptr [rip + read_size]
	mov	rsi, qword ptr [rip + G_buffer]
	lea	rdi, [rdi]
	mov	edi, ebp
	nop	
	mov	rdx, rbx
	call	safe_read
	mov	r14, rax
	nop	
	sub	qword ptr [rsp + 0x28], rbx
	jne	.label_94
.label_63:
	lea	rdi, [rdi]
	cmp	r14, qword ptr [rip + read_size]
	mov	rsp, rsp
	jne	.label_99
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r15
	lea	rdi, [rdi]
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_74:
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, ebp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	safe_read
	mov	rsp, rsp
	mov	r12, rax
	lea	rdi, [rdi]
	cmp	r12, -1
	je	.label_66
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_87
	add	qword ptr [rsp + 0x28], r12
	mov	rsp, rsp
	cmp	r12, qword ptr [rip + read_size]
	lea	rsi, [rsi]
	mov	r14, r12
	je	.label_74
	mov	rsp, rsp
	jmp	.label_75
.label_99:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r15
	lea	rsi, [rsi]
	mov	rbx, r12
.label_87:
	cmp	r14, -1
	mov	r12, r14
	je	.label_66
.label_75:
	nop	
	mov	dword ptr [rsp + 4], ebp
	lea	rdi, [rdi]
	inc	rbx
	mov	qword ptr [rsp + 0x20], rbx
	add	r12, qword ptr [rip + G_buffer]
	mov	rax, qword ptr [rip + sentinel_length]
	mov	rsp, rsp
	mov	ebp, 1
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	sub	rbp, rcx
	dec	rcx
	mov	qword ptr [rsp + 0x10], rcx
	add	rbp, r12
	test	rax, rax
	cmove	rbp, r12
	mov	cl, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], ecx
	lea	rdi, [rdi]
	jmp	.label_80
	nop	dword ptr [rax + rax]
.label_70:
	mov	rsp, rsp
	mov	rax, qword ptr [rip + sentinel_length]
	mov	rbp, rbp
	mov	rcx, qword ptr [rip + match_length]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	sub	rdx, rcx
	test	rax, rax
	lea	rbp, [r14 + rdx + 1]
	cmove	rbp, r14
.label_80:
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_56
	mov	rbp, rbp
	dec	rbp
	mov	r14, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_65:
	lea	rdi, [rdi]
	dec	r14
.label_59:
	movzx	eax, r13b
	mov	rsp, rsp
	movzx	ecx, byte ptr [r14]
	mov	rsp, rsp
	cmp	ecx, eax
	lea	rsi, [rsi]
	jne	.label_65
	test	rbp, rbp
	je	.label_72
	lea	rdi, [r14 + 1]
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	strncmp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_65
.label_72:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rip + G_buffer]
	jmp	.label_76
	nop	dword ptr [rax + rax]
.label_56:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rax, rbp
	sub	rax, rsi
	mov	r8d, 1
	sub	r8, rax
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rsi
	js	.label_78
	je	.label_61
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	dec	rcx
	mov	edi, OFFSET FLAT:compiled_separator
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:regs
	lea	rsi, [rsi]
	call	rpl_re_search
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_91
	cmp	rax, -2
	mov	rsp, rsp
	je	.label_92
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + G_buffer]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rip + label_95]
	mov	rax, qword ptr [rax]
	lea	r14, [rbp + rax]
	nop	
	mov	rcx, qword ptr [rip + label_96]
	mov	rcx, qword ptr [rcx]
	sub	rcx, rax
	mov	qword ptr [rip + match_length],  rcx
.label_76:
	mov	rsp, rsp
	cmp	r14, rbp
	jb	.label_61
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rip + separator_ends_record]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_89
	mov	rcx, qword ptr [rip + match_length]
	nop	
	add	rcx, r14
	nop	
	mov	eax, dword ptr [rsp + 0x34]
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	je	.label_69
	cmp	rcx, r12
	jne	.label_69
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], 0
	mov	rbp, rbp
	jmp	.label_70
	nop	dword ptr [rax]
.label_89:
	mov	r15, qword ptr [rip + output.bytes_in_buffer]
	test	r14, r14
	nop	
	je	.label_55
	sub	r12, r14
	lea	rsi, [rsi]
	mov	ebx, 0x2000
	sub	rbx, r15
	lea	rsi, [rsi]
	cmp	r12, rbx
	lea	rdi, qword ptr [r15 + output.buffer]
	mov	rbp, r14
	mov	rbp, rbp
	jb	.label_82
	nop	word ptr cs:[rax + rax]
.label_101:
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	sub	r12, rbx
	add	rbp, rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + stdout]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	rsp, rsp
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r12, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	mov	r15d, 0
	ja	.label_101
.label_82:
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_62
.label_69:
	nop	
	mov	r15, qword ptr [rip + output.bytes_in_buffer]
	test	rcx, rcx
	je	.label_68
	sub	r12, rcx
	mov	ebx, 0x2000
	sub	rbx, r15
	lea	rdi, [rdi]
	cmp	r12, rbx
	lea	rdi, qword ptr [r15 + output.buffer]
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	jb	.label_73
	nop	dword ptr [rax + rax]
.label_88:
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	call	memcpy
	sub	r12, rbx
	mov	rbp, rbp
	add	rbp, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x2000
	lea	rsi, [rsi]
	call	fwrite_unlocked
	lea	rdi, [rdi]
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r12, 0x1fff
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	lea	rsi, [rsi]
	mov	r15d, 0
	ja	.label_88
.label_73:
	nop	
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_100
.label_91:
	mov	rbp, qword ptr [rip + G_buffer]
.label_61:
	lea	rdi, [rdi]
	sub	r12, rbp
	nop	
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_58
	lea	rsi, [rsi]
	mov	rax, qword ptr [rip + read_size]
	mov	rsp, rsp
	cmp	r12, rax
	nop	
	jbe	.label_97
	nop	
	mov	rcx, qword ptr [rip + sentinel_length]
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebx, 1
	mov	rsp, rsp
	cmovne	rbx, rcx
	mov	rdx, qword ptr [rip + G_buffer_size]
	lea	rsi, [rsi]
	lea	rsi, [rax + rax]
	mov	qword ptr [rip + read_size],  rsi
	lea	rdi, [rdi]
	lea	rsi, [rcx + rax*4 + 2]
	mov	qword ptr [rip + G_buffer_size],  rsi
	cmp	rsi, rdx
	jb	.label_67
	lea	rsi, [rsi]
	sub	rbp, rbx
	mov	rdi, rbp
	call	xrealloc
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rip + G_buffer],  rax
	mov	rbp, rbp
	mov	rax, qword ptr [rip + read_size]
.label_97:
	nop	
	mov	rcx, r14
	sub	rcx, rax
	mov	edi, dword ptr [rsp + 4]
	jae	.label_84
	mov	qword ptr [rip + read_size],  r14
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	jmp	.label_86
.label_55:
	mov	rcx, qword ptr [rip + stdout]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:output.buffer
	nop	
	mov	esi, 1
	mov	rdx, r15
	nop	
	call	fwrite_unlocked
	lea	rdi, [rdi]
	xor	r15d, r15d
.label_62:
	mov	qword ptr [rip + output.bytes_in_buffer],  r15
	lea	rsi, [rsi]
	mov	r12, r14
	mov	rbp, rbp
	jmp	.label_70
.label_84:
	mov	rsp, rsp
	mov	rsi, rcx
.label_86:
	mov	qword ptr [rsp + 0x28], rsi
	nop	
	xor	edx, edx
	lea	rsi, [rsi]
	call	lseek
	test	rax, rax
	jns	.label_60
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rbp
	call	error
.label_60:
	mov	rbp, qword ptr [rip + G_buffer]
	mov	r14, qword ptr [rip + read_size]
	lea	rbx, [rbp + r14]
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r12
	call	memmove
	mov	rbp, rbp
	mov	r15, qword ptr [rip + sentinel_length]
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	safe_read
	cmp	rax, qword ptr [rip + read_size]
	mov	rsp, rsp
	jne	.label_66
	add	r12, rbx
	nop	
	test	r15, r15
	mov	rsp, rsp
	mov	rbp, r12
	je	.label_71
	lea	rdi, [rdi]
	mov	rbp, rbx
.label_71:
	nop	
	mov	rax, qword ptr [rip + sentinel_length]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_80
.label_68:
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, r15
	call	fwrite_unlocked
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_100:
	mov	qword ptr [rip + output.bytes_in_buffer],  r15
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], 0
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_70
.label_66:
	mov	rbp, rbp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_77
.label_58:
	mov	rsp, rsp
	mov	r14, qword ptr [rip + output.bytes_in_buffer]
	mov	ebx, 0x2000
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_79
	lea	rsi, [rsi]
	sub	rbx, r14
	nop	
	cmp	r12, rbx
	lea	rdi, qword ptr [r14 + output.buffer]
	mov	rbp, rbp
	jae	.label_83
	lea	rdi, [rdi]
	mov	r15, rdi
	jmp	.label_85
.label_79:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + stdout]
	nop	
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	fwrite_unlocked
	xor	r14d, r14d
	jmp	.label_93
.label_83:
	mov	r15d, OFFSET FLAT:output.buffer
	xor	r14d, r14d
.label_64:
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
	mov	rbp, rbp
	add	rbp, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	nop	
	mov	edx, 0x2000
	nop	
	call	fwrite_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	nop	
	cmp	r12, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	ja	.label_64
.label_85:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r12
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	add	r14, r12
.label_93:
	mov	qword ptr [rip + output.bytes_in_buffer],  r14
	mov	bl, 1
.label_77:
	mov	al, bl
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_78:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_81
.label_92:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_81:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_67:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [rip + file_name],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4030e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_103
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_102
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_102
.label_103:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_105
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_102:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_104
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	mov	rsp, rsp
	call	_exit
.label_105:
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
.label_104:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031f0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_107
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_112
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_111
.label_107:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_108
	jmp	.label_109
.label_112:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_113
.label_109:
	xor	r12d, r12d
	jmp	.label_108
.label_113:
	mov	r12b, 0x2f
.label_108:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_111:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_110
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_106
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_106:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_110:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403340

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
	je	.label_114
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
	jl	.label_116
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_116
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
	jne	.label_115
	nop	
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_115:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_116:
	mov	rsp, rsp
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_114:
	mov	rcx, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
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
	#Procedure 0x403430
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
	#Procedure 0x403480
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
	#Procedure 0x4034a0
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
	#Procedure 0x4034c0
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
	#Procedure 0x403530
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
	#Procedure 0x403550
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
	je	.label_117
	test	rdx, rdx
	nop	
	je	.label_117
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_117:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403590
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
	.align	32
	#Procedure 0x403640

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
.label_223:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_200
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_209]
.label_2212:
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
.label_2213:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_227
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_227
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_124:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_240
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_240:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_124
.label_227:
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
	jmp	.label_138
.label_2205:
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
	jmp	.label_138
.label_2208:
	lea	rsi, [rsi]
	mov	al, 1
.label_2206:
	mov	rbp, rbp
	mov	r12b, 1
.label_2209:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_161
	lea	rsi, [rsi]
	mov	cl, al
.label_161:
	mov	rsp, rsp
	mov	al, cl
.label_2207:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_169
	test	r10, r10
	je	.label_181
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_175
.label_169:
	xor	ecx, ecx
	jmp	.label_175
.label_2210:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_185
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_190
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_195
.label_2211:
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
	jmp	.label_138
.label_181:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_175:
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
	jmp	.label_138
.label_185:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_195
.label_190:
	lea	rdi, [rdi]
	mov	eax, 1
.label_195:
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
.label_138:
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
	jmp	.label_208
	nop	word ptr cs:[rax + rax]
.label_203:
	nop	
	inc	rdi
.label_208:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_165
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_146
	jmp	.label_171
	nop	dword ptr [rax + rax]
.label_165:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_174
.label_146:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_180
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_183
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_183
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
.label_183:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_218
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_180:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_218:
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
	jne	.label_234
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
	je	.label_123
	jmp	.label_136
.label_234:
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
.label_123:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_147
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_149]
.label_2267:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_122
	mov	rbp, rbp
	jmp	.label_158
.label_2271:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_160
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_167
	nop	
	cmp	rbp, 1
	je	.label_158
	xor	r13d, r13d
	jmp	.label_125
.label_2260:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_198
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_136
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_186
	mov	al, r14b
	and	al, 1
	jne	.label_189
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_151
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_151:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_204
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_212
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_166
.label_2261:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_130
.label_2262:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_140
.label_2263:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_130
.label_2264:
	mov	bl, 0x66
	jmp	.label_130
.label_2265:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_140
.label_2268:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_233
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_235
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
	jae	.label_213
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_213:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_220
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_220:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_144
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_144:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_233:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_125
.label_2269:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_157
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_122
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_122
	mov	rbp, rbp
	jmp	.label_170
.label_2270:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_172
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_176
	lea	rdi, [rdi]
	jmp	.label_182
.label_147:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_164
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
.label_134:
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
	ja	.label_211
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_211
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_125
.label_160:
	test	rdi, rdi
	jne	.label_225
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_225
.label_158:
	mov	dl, 1
.label_2266:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_231
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_125
.label_198:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_203
	jmp	.label_122
.label_172:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_140
.label_176:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_119
.label_140:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_118
.label_130:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_125
	lea	rsi, [rsi]
	jmp	.label_133
.label_164:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_135
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
.label_135:
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
.label_129:
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
	je	.label_173
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_178
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_187
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_194
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_217:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_210
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_202
.label_210:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_217
.label_194:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_207
	xor	r13d, r13d
.label_207:
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
	je	.label_129
	mov	rsp, rsp
	jmp	.label_134
.label_225:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_125
.label_157:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_122
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_122
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_122
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_132
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_162
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_142
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_145
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_145:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_153
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_153:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_137
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_137:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_121
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_121:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_125
.label_122:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_125:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_191
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_197
	lea	rsi, [rsi]
	jmp	.label_201
.label_191:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_201
.label_197:
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
	jne	.label_206
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_214
	nop	word ptr cs:[rax + rax]
.label_201:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_214:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_119
	mov	rsp, rsp
	jmp	.label_133
.label_206:
	mov	bl, r15b
.label_133:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_136
	nop	
	cmp	r9d, 2
	jne	.label_229
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_229
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_163
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_163:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_238
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_238:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_241
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_241:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_229:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_128
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_128:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_226
.label_167:
	xor	r13d, r13d
	nop	
	jmp	.label_125
.label_211:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_141
	nop	dword ptr [rax + rax]
.label_155:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_141:
	test	cl, cl
	je	.label_148
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_150
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_156
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_156:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_150
	nop	dword ptr [rax]
.label_148:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_136
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_177
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_177
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_239
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_239:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_192
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_192:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_205
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_205:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_177:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_215
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_215:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_221
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_221:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_230
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
.label_230:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_150:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_119
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_126
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_126
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_131
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_131:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_139
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_139:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_126:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_155
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_155
	nop	word ptr cs:[rax + rax]
.label_119:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_168
	mov	rsp, rsp
	and	al, 1
	jne	.label_168
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_179
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_179:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_222
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_168:
	mov	rsp, rsp
	mov	bl, r15b
.label_226:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_159
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_159:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_203
.label_186:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_166
.label_189:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_166:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_216
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_216:
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
	je	.label_188
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_224
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_242
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_232
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_232:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_236
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_236:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_125
.label_188:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_125
.label_224:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_125
.label_242:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_125
.label_178:
	xor	r13d, r13d
.label_173:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_134
.label_187:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_143
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_154:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_152
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_154
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_134
.label_143:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_134
.label_152:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_134
.label_132:
	xor	r13d, r13d
	jmp	.label_125
.label_162:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_125
.label_171:
	nop	
	mov	r13, rdi
.label_174:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_184
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_196
.label_184:
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
	je	.label_199
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_199
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_219
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_199
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_223
.label_199:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_228
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_228
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_228
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_120:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_237
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_237:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_120
.label_228:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_127
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_127
.label_231:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_136
.label_202:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_136
.label_196:
	nop	
	mov	rbp, r13
	jmp	.label_136
.label_118:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_136:
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
.label_193:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_127:
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
.label_219:
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
	jmp	.label_193
.label_235:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_136
.label_182:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_136
.label_170:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_136
.label_142:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_136
.label_200:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
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
	.align	32
	#Procedure 0x404d00
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
	je	.label_243
	mov	qword ptr [rax], rbx
.label_243:
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
	#Procedure 0x404e50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_244
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_248:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rip + nslots]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_248
.label_244:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_247
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rip + slotvec0],  0x100
	mov	rsp, rsp
	mov	qword ptr [rip + label_245], OFFSET FLAT:slot0
.label_247:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_246
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_246:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f10
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f20

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
	js	.label_250
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_254
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_252
.label_254:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_255
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_251
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_251:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rip + nslots]
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
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_252:
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
	ja	.label_249
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
	je	.label_253
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_253:
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
.label_249:
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
.label_250:
	lea	rdi, [rdi]
	call	abort
.label_255:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405190
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0
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
	.align	32
	#Procedure 0x4051d0
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
	.align	32
	#Procedure 0x405200
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
	je	.label_256
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
.label_256:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405290
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
	je	.label_257
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
.label_257:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

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
	je	.label_258
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
.label_258:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0
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
	je	.label_259
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
.label_259:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405430
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_260]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x4054d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x405570

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + label_260]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x4055e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x405650

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
	je	.label_263
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
.label_263:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405730
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax, qword ptr [rip + label_260]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_261]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_262]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_264
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_264
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
.label_264:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4057c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + label_260]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_261]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_262]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_265
	test	rdx, rdx
	je	.label_265
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
.label_265:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_260]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_261]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_262]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_266
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_266
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
.label_266:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_260]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_261]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_262]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_267
	test	rsi, rsi
	je	.label_267
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
.label_267:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405990
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0
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
	.align	32
	#Procedure 0x4059c0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059e0
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
	.align	32
	#Procedure 0x405a10

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
	jne	.label_270
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_268
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_269
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_269
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_269
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_269
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_269
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_269
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_270
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_270
.label_268:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_269
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_269
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_269
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_269
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_269
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_269
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_271
.label_269:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_270:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_271:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_270
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_270
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b80

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	nop	word ptr [rax + rax]
.label_273:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jns	.label_272
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_273
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_272
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_273
.label_272:
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10

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
	.align	32
	#Procedure 0x405c30
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
	.align	32
	#Procedure 0x405c50

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
	ja	.label_274
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
	jmp	.label_275
.label_274:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_275:
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
	.align	32
	#Procedure 0x405cc0

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
	je	.label_276
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_278
.label_276:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_278:
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
	ja	.label_280
	lea	rsi, [rsi]
	jmp	qword ptr [(r12 * 8) + label_281]
.label_2285:
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
.label_280:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_283
.label_2286:
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
.label_2287:
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
.label_2288:
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
	jmp	.label_285
.label_2289:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
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
	jmp	.label_284
.label_2290:
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
	jmp	.label_282
.label_2291:
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
.label_282:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_284:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_285:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_279
.label_2293:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_283:
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
	jmp	.label_277
.label_2292:
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
.label_277:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_279:
	mov	rbp, rbp
	call	__fprintf_chk
.label_2284:
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
	#Procedure 0x4060b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_286:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_286
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_290:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_287
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_289:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_288
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_290
.label_288:
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
	#Procedure 0x406170

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_291
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
.label_291:
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
.label_293:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_292
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_294
	nop	dword ptr [rax + rax]
.label_292:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_294:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_295
	inc	r9
	cmp	r9, 0xa
	jb	.label_293
.label_295:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x406340
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
	jb	.label_296
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_297
	test	rax, rax
	je	.label_296
.label_297:
	nop	
	pop	rbx
	ret	
.label_296:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406390

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_298
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_299
.label_298:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_299:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063c0
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
	jb	.label_301
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_300
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_300
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_300:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_302
	test	rax, rax
	je	.label_301
.label_302:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_301:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406440

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_303
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_303
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_303:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	nop	
	je	.label_305
.label_304:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_305:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406490
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_310
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_306
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_312
.label_310:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_309
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_309:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_311
.label_312:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_308
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_308
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_308:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_307
	test	rax, rax
	mov	rbp, rbp
	je	.label_306
.label_307:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_306:
	call	xalloc_die
.label_311:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406570
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_314
	test	rax, rax
	mov	rbp, rbp
	je	.label_313
.label_314:
	pop	rbx
	ret	
.label_313:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406590
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_318
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_319
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_317
	call	free
	xor	eax, eax
	jmp	.label_315
.label_318:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_316
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_317:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_315
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_316
.label_315:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_316:
	mov	rbp, rbp
	call	xalloc_die
.label_319:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406620
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
	je	.label_320
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_321
.label_320:
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
.label_321:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406680
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
	jb	.label_322
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_322
	pop	rcx
	ret	
.label_322:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4066b0

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
	je	.label_324
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_323
.label_324:
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
.label_323:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406710
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
	je	.label_325
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_326
.label_325:
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
.label_326:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406770

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4067c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_327
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_328
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
	je	.label_328
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
.label_327:
	mov	ecx, 1
.label_328:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406830

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
	jne	.label_329
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_329
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_330
.label_329:
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
.label_330:
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
	je	.label_331
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_331:
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
	#Procedure 0x4068e0

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
	je	.label_332
	nop	
	cmp	r15, -2
	jb	.label_332
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_332
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_332:
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
	#Procedure 0x406970

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
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
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_333
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_333:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069e0

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
	sub	rsp, 0xf8
	nop	
	mov	qword ptr [rsp + 0xc8], rcx
	nop	
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	rsp, rsp
	mov	r12, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_468
.label_470:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0xf
	mov	rbp, rbp
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_356
	lea	rdi, [r13 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_467:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r13
	nop	
	jbe	.label_467
	lea	rsi, [rsi]
	mov	edi, 0x18
	mov	rsi, rbx
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	lea	rdi, [rdi]
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x88], rbx
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_479
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_479
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_479
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_479
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_479
	or	byte ptr [r12 + 0xb0], 4
.label_479:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_335
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_351
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_356
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_373:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_364
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_364:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_367
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_367
	or	byte ptr [r12 + 0xb0], 8
.label_367:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_373
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_392:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_383
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_383:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_390
	or	byte ptr [r12 + 0xb0], 8
.label_390:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_392
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_486
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_486:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_403
	nop	word ptr cs:[rax + rax]
.label_413:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_408
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_408:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_413
	jmp	.label_335
.label_351:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_335:
	cmp	qword ptr [r12], 0
	je	.label_356
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_356
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0xc8]
	and	ecx, 0x400000
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0x20], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r13
	mov	qword ptr [rsp + 0x70], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rbx
	mov	rax, rcx
	nop	
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xa8], al
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], edx
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa9], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rbp, rbp
	shr	al, 3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rsp + 0xaa], al
	mov	qword ptr [rsp + 0x88], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r13
	mov	rsp, rsp
	xor	eax, eax
	test	r13, r13
	jle	.label_422
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_464
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r15d, 0xc
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	movabs	rcx, 0x1fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	ja	.label_381
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_381
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_464:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_480
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	nop	
	call	realloc
	mov	r15d, 0xc
	nop	
	test	rax, rax
	je	.label_381
	mov	qword ptr [rsp + 0x28], rax
	mov	r15, qword ptr [rsp + 0xd0]
.label_480:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	nop	
	jmp	.label_487
.label_356:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_337
.label_422:
	shr	rcx, 0x20
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
.label_487:
	mov	rsp, rsp
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	lea	rdi, [rdi]
	je	.label_350
	lea	rsi, [rsi]
	cmp	ecx, 2
	jl	.label_358
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	lea	rdi, [rdi]
	mov	r15d, eax
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_381
	lea	r14, [rsp + 0x20]
.label_406:
	cmp	qword ptr [rsp + 0x58], r13
	jge	.label_368
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	rbp, rax
	mov	rbp, rbp
	jg	.label_368
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xb0], 2
	lea	rdi, [rdi]
	jl	.label_377
	nop	
	mov	r15d, 0xc
	mov	rsp, rsp
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_381
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rbp*8]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_381
	nop	
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_377
	shl	rbp, 4
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_381
	mov	qword ptr [rsp + 0x38], rax
.label_377:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_398
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	realloc
	lea	rsi, [rsi]
	mov	r15d, 0xc
	test	rax, rax
	je	.label_381
	mov	qword ptr [rsp + 0x28], rax
.label_398:
	mov	qword ptr [rsp + 0x60], rbx
	mov	rdi, r14
	nop	
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	mov	r15d, eax
	mov	rsp, rsp
	test	r15d, r15d
	je	.label_406
.label_381:
	mov	dword ptr [rsp + 0x14], r15d
	jmp	.label_357
.label_350:
	mov	rbp, rbp
	cmp	ecx, 2
	jl	.label_394
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_buffer
	lea	rdi, [rdi]
	jmp	.label_368
.label_358:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	cmp	rax, r13
	cmovg	rax, r13
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	r13, r13
	nop	
	jle	.label_415
	mov	rbp, rbp
	xor	eax, eax
	mov	ebp, 1
	mov	rsp, rsp
	jmp	.label_423
	nop	word ptr cs:[rax + rax]
.label_437:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_423:
	add	r14, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_431
.label_441:
	mov	rsp, rsp
	movzx	ebx, al
	lea	rsi, [rsi]
	lea	eax, [rbx + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_433
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_433:
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_437
	jmp	.label_440
.label_431:
	mov	al, byte ptr [rbx + rcx]
	mov	rbp, rbp
	jmp	.label_441
.label_394:
	test	rbx, rbx
	je	.label_442
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	mov	rbp, rbp
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_444
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r14]
	nop	
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	nop	
	jl	.label_444
	nop	dword ptr [rax + rax]
.label_454:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, rdi
	nop	
	jl	.label_454
	lea	rsi, [rsi]
	mov	rcx, rdi
.label_444:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	jmp	.label_368
.label_468:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	mov	rbp, rbp
	je	.label_337
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_470
.label_440:
	mov	rsp, rsp
	mov	rax, r13
.label_415:
	mov	qword ptr [rsp + 0xd0], r15
	jmp	.label_472
.label_442:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
.label_472:
	nop	
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rax
.label_368:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x30], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [rsp + 0xc8]
	nop	
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	or	rdx, 0x800000
	mov	rsp, rsp
	lea	r14, [rsp + 0xe0]
	mov	rsp, rsp
	lea	r13, [rsp + 0x20]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	mov	rbp, rbp
	cdqe	
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, rbp
	call	parse_reg_exp
	nop	
	mov	r14, rax
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_340
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	jne	.label_380
.label_340:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_348
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_450:
	nop	
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
.label_448:
	test	r14, r14
	mov	rbp, rbp
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_366
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_370
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x70]
.label_466:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	mov	rsp, rsp
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	mov	rsp, rsp
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_376
	mov	qword ptr [rbp], rcx
.label_366:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_376
	test	rcx, rcx
	je	.label_376
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x68], rcx
	nop	
	mov	r15, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	nop	
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_410
	cmp	qword ptr [r15 + 0x20], 0
	nop	
	je	.label_412
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_449
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	test	rax, rax
	je	.label_463
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_426
	test	rbx, rbx
	je	.label_428
	mov	rcx, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	edx, 1
	cmova	rdx, rcx
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_430
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_430
	cmp	rcx, 1
	lea	rsi, [rsi]
	mov	ebp, 1
	cmova	rbp, rcx
	lea	rsi, [rsi]
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	mov	rbp, rbp
	xor	edi, edi
	bt	rbp, 2
	nop	
	jb	.label_443
	lea	rsi, [rsi]
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	mov	rsp, rsp
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0, xmmword ptr [rip + label_445]
	nop	
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_443:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_452
	mov	rsp, rsp
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	lea	rsi, [rsi]
	movdqa	xmm1, xmmword ptr [rip + label_445]
.label_459:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rsp, rsp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rdi, [rdi]
	lea	rbp, [rdi + 4]
	nop	
	movq	xmm2, rbp
	lea	rdi, [rdi]
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	mov	rbp, rbp
	jne	.label_459
.label_452:
	mov	rbp, rbp
	cmp	rdx, rsi
	mov	rdi, rsi
	mov	rsp, rsp
	je	.label_428
	nop	dword ptr [rax + rax]
.label_430:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_430
.label_428:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	call	optimize_subexps
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_461
.label_473:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_446
	nop	dword ptr [rax + rax]
.label_485:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, rcx
	je	.label_482
	test	rbp, rbp
	jne	.label_446
.label_482:
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_485
	jmp	.label_461
.label_446:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	lea	rsi, [rsi]
	je	.label_473
.label_461:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_341
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_345:
	cmp	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	jne	.label_341
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rax
	jb	.label_345
.label_341:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jne	.label_355
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_355
.label_410:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	jmp	.label_357
.label_412:
	nop	
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_357
.label_426:
	mov	rbp, rbp
	lea	r14, [r15 + 0x68]
.label_355:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_342:
	mov	rbp, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_342
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_342
	mov	rsp, rsp
	jmp	.label_378
	nop	dword ptr [rax]
.label_407:
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rbp, rcx
.label_378:
	mov	dword ptr [rsp + 0xe0], 0
	test	rdx, rdx
	je	.label_382
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_382
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	mov	rsp, rsp
	je	.label_382
	mov	qword ptr [rax], rbp
	nop	word ptr cs:[rax + rax]
.label_382:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	nop	
	je	.label_396
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rbp, rbp
	cmp	eax, 0x11
	jne	.label_396
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0xd0]
	nop	
	call	lower_subexp
	nop	
	mov	qword ptr [rbp + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_396
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	nop	
.label_396:
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	jne	.label_369
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_404
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	nop	
	je	.label_407
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_407
	mov	rsp, rsp
	jmp	.label_342
.label_404:
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	nop	
	mov	ebx, 0xfffc00ff
.label_414:
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_414
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_414
	nop	dword ptr [rax]
.label_438:
	movzx	eax, byte ptr [rbp + 0x30]
	nop	
	cmp	eax, 0x10
	nop	
	jne	.label_419
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_421
.label_419:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	nop	
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_429
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	lea	rsi, [rsi]
	jne	.label_421
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_421:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_435
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rsp, rsp
	mov	rbp, rcx
	je	.label_438
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_438
	lea	rdi, [rdi]
	jmp	.label_414
.label_348:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_448
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_450
.label_435:
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 0x30]
	nop	
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_456
	lea	rdi, [rdi]
	cmp	eax, 0xb
	jne	.label_458
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_460
.label_429:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rsp, rsp
	jmp	.label_357
.label_370:
	nop	
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	nop	
	test	rax, rax
	je	.label_376
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_466
.label_376:
	mov	dword ptr [rsp + 0x14], 0xc
.label_380:
	nop	
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_474
.label_456:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	lea	rdi, [rdi]
	jmp	.label_475
.label_458:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_478
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_478:
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_460
.label_475:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_460:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_362
.label_343:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	lea	rsi, [rsi]
	mov	rdx, rcx
.label_362:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_334
.label_339:
	mov	rbp, rbp
	mov	rax, rsi
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	je	.label_489
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_334
.label_489:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	test	rdx, rdx
	jne	.label_339
	lea	rsi, [rsi]
	jmp	.label_484
.label_334:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_343
	cmp	eax, 0xb
	jne	.label_346
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_362
.label_346:
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_353
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
.label_353:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rdx, rcx
	lea	rsi, [rsi]
	je	.label_362
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_362
.label_484:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rsp, rsp
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	jne	.label_369
.label_388:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	jne	.label_371
	nop	word ptr [rax + rax]
.label_384:
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_375
	test	rbp, rbp
	jne	.label_371
.label_375:
	mov	rbx, qword ptr [rax]
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	jne	.label_384
	mov	rsp, rsp
	jmp	.label_387
.label_371:
	mov	rdi, r15
	mov	rsi, rbp
	nop	
	call	link_nfa_nodes
	nop	
	test	eax, eax
	mov	rbx, rbp
	je	.label_388
	lea	rdi, [rdi]
	jmp	.label_369
.label_387:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_391
	nop	dword ptr [rax + rax]
.label_401:
	inc	rbp
	lea	rdi, [rdi]
	mov	rax, rbp
.label_391:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jne	.label_395
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	test	r13b, 1
	mov	r13d, 0
	jne	.label_397
	mov	rsp, rsp
	jmp	.label_400
.label_395:
	mov	rbp, rbp
	mov	rbp, rax
.label_397:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_401
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_369
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rbp, rbp
	jne	.label_401
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_401
.label_369:
	mov	dword ptr [rsp + 0x14], eax
.label_357:
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
.label_474:
	nop	
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_417
	nop	dword ptr [rax + rax]
.label_424:
	mov	rbp, qword ptr [rdi]
	call	free
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	jne	.label_424
.label_417:
	mov	qword ptr [rbx + 0x70], 0
	nop	
	mov	dword ptr [rbx + 0x80], 0xf
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x68], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	nop	
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	mov	rbp, rbp
	je	.label_425
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_425:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_434:
	mov	eax, dword ptr [rsp + 0x14]
.label_337:
	lea	rdi, [rdi]
	add	rsp, 0xf8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_400:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_344
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	nop	
	je	.label_344
	test	byte ptr [r15 + 0xb0], 1
	nop	
	jne	.label_451
.label_344:
	cmp	qword ptr [r15 + 0x98], 0
	mov	rbp, rbp
	je	.label_453
.label_451:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x38], rax
	nop	
	test	rax, rax
	je	.label_457
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_453
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_462
.label_471:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_471
.label_462:
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_453
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	xor	r10d, r10d
.label_360:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	rdi, [rdi]
	jle	.label_476
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	nop	
	mov	qword ptr [rsp + 8], rdi
	nop	
	xor	ebx, ebx
.label_354:
	mov	r13, qword ptr [r15 + 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	mov	rbp, rbp
	lea	r14, [r13 + rbp*8 + 8]
	nop	
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_481
	mov	rbp, rbp
	lea	rcx, [r13 + rbp*8]
	mov	rsp, rsp
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_347
	lea	rcx, [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_338
.label_481:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_338:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_354
	mov	rax, qword ptr [r15 + 0x10]
.label_476:
	lea	rsi, [rsi]
	inc	r10
	nop	
	cmp	r10, rax
	nop	
	jb	.label_360
.label_453:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_361
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	and	cl, 4
	nop	
	je	.label_361
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rsi, [rsi]
	jne	.label_361
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_374
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rdi, [rdi]
	mov	rcx, rbx
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_372:
	mov	rbp, rbp
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rbp, rbp
	ja	.label_386
	lea	rsi, [rsi]
	jmp	qword ptr [(rsi * 8) + label_389]
.label_2173:
	mov	rbp, rbp
	mov	sil, 1
	mov	rsp, rsp
	cmp	byte ptr [rcx], 0
	js	.label_488
	mov	sil, r10b
.label_488:
	mov	rbp, rbp
	mov	r10b, sil
	jmp	.label_393
.label_2174:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_361
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_393
	jmp	.label_361
.label_2175:
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_393
.label_2176:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	mov	rsp, rsp
	cmp	edi, 0x30
	ja	.label_399
	bt	r8, rdi
	jb	.label_393
.label_399:
	nop	
	cmp	esi, 0x80
	mov	rsp, rsp
	jne	.label_361
.label_393:
	inc	rbp
	mov	rsp, rsp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_372
	mov	rbp, rbp
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	lea	rdi, [rdi]
	xor	edx, edx
	mov	esi, 8
	mov	rsp, rsp
	test	r10b, 1
	je	.label_405
	jmp	.label_409
.label_449:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_357
.label_463:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_357
.label_427:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_409:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	mov	rsp, rsp
	cmp	edi, 5
	je	.label_416
	lea	rdi, [rdi]
	cmp	edi, 1
	mov	rbp, rbp
	jne	.label_420
	cmp	byte ptr [rbx + rsi - 8], 0
	mov	rbp, rbp
	jns	.label_420
	mov	rsp, rsp
	and	eax, 0xffdfffff
	jmp	.label_469
.label_416:
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 7
.label_469:
	mov	rsp, rsp
	mov	dword ptr [rbx + rsi], eax
.label_420:
	nop	
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_427
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	jmp	.label_405
.label_347:
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_357
.label_374:
	xor	ecx, ecx
.label_405:
	mov	dword ptr [r12 + 0xb4], 1
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	setg	dl
	or	dl, cl
	lea	rsi, [rsi]
	add	dl, dl
	nop	
	and	al, 0xf9
	or	al, dl
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0xb0], al
.label_361:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	nop	
	mov	qword ptr [rsp + 0xe8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	test	r14, r14
	jle	.label_439
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], r15
	lea	rdi, [r15*8]
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	test	rbp, rbp
	je	.label_455
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	nop	
	shl	r14, 3
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	jle	.label_365
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_365
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	lea	rsi, [rsi]
	jmp	.label_465
.label_363:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_465:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12]
	lea	rsi, [rsi]
	mov	rsi, r8
	shl	rsi, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_352
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_477
	add	rsi, rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_436:
	mov	rcx, qword ptr [rbp + rdi*8]
	nop	
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_483
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	mov	rsp, rsp
	je	.label_477
.label_483:
	inc	rdi
	lea	rsi, [rsi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jl	.label_436
.label_477:
	mov	rsp, rsp
	cmp	rdi, r15
	je	.label_352
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	jle	.label_349
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_490
.label_336:
	lea	rdi, [rdi]
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	mov	rbp, rbp
	lea	rbx, [rdi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbx
	nop	
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_336
.label_490:
	cmp	rdx, -1
	je	.label_349
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_352
.label_349:
	mov	rax, qword ptr [r12 + 0x30]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rdi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	mov	rsp, rsp
	call	re_node_set_merge
	test	eax, eax
	jne	.label_359
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_352:
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r15
	jl	.label_363
	jmp	.label_365
.label_439:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	dword ptr [rsp + 0xdc], 0
.label_365:
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_379
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_447
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_385
.label_447:
	mov	rsp, rsp
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	ecx, 2
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rsi, [rsi]
	je	.label_402
	test	rax, rax
	je	.label_402
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_402
.label_385:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
.label_359:
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	nop	
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	je	.label_411
.label_418:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rsp, rsp
	mov	rdi, rbp
	jne	.label_418
.label_411:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	lea	rsi, [rsi]
	je	.label_432
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_432:
	xor	eax, eax
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_337
	mov	rdi, r12
	nop	
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_434
.label_402:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_359
.label_457:
	lea	rsi, [rsi]
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_357
.label_379:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_359
.label_455:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_359
.label_386:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086e0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	rbp, rbp
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

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
	mov	rax, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_491
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_491:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_492
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_492:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_493
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_493:
	or	byte ptr [r14 + 0x38], 8
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408810

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
	sub	rsp, 0x148
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x138], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_500
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r14b, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rsi, [rsi]
	shr	r14b, 6
	mov	rbp, rbp
	jmp	.label_511
.label_500:
	nop	
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
.label_511:
	cmp	qword ptr [rsi + 0x10], 0
	mov	rsp, rsp
	jle	.label_517
	nop	
	xor	edx, edx
	nop	
.label_508:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	lea	rdi, [rdi]
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	mov	rsp, rsp
	cmp	ebx, 1
	je	.label_520
	mov	qword ptr [rsp], rdx
	lea	rdi, [rdi]
	cmp	ebx, 6
	lea	rdi, [rdi]
	je	.label_528
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_506
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_509:
	bt	rbp, rbx
	jae	.label_494
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_494
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_501
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	mov	rbp, rbp
	jmp	.label_505
.label_501:
	nop	
	mov	eax, ebx
.label_505:
	cdqe	
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_494:
	inc	rbx
	cmp	rbx, 0x40
	mov	rbp, rbp
	jne	.label_509
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax + 8]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_525:
	bt	rbp, rbx
	mov	rbp, rbp
	jae	.label_515
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_515
	nop	
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_503
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_524
.label_503:
	lea	rsi, [rsi]
	lea	rax, [rbx + 0x40]
.label_524:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_515:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 0x40
	lea	rsi, [rsi]
	jne	.label_525
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_507:
	bt	rbp, rbx
	lea	rsi, [rsi]
	jae	.label_529
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx + 0x80], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_529
	lea	eax, [rbx + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_495
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_502
.label_495:
	lea	rax, [rbx + 0x80]
.label_502:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_529:
	nop	
	inc	rbx
	cmp	rbx, 0x40
	nop	
	jne	.label_507
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_498:
	mov	rbp, rbp
	bt	rbp, rbx
	jae	.label_513
	mov	rsp, rsp
	mov	byte ptr [r15 + rbx + 0xc0], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_513
	lea	rdi, [rdi]
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	nop	
	jae	.label_531
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	lea	rdi, [rdi]
	jmp	.label_521
.label_531:
	lea	rax, [rbx + 0xc0]
.label_521:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_513:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_498
	jmp	.label_499
	nop	word ptr [rax + rax]
.label_528:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_497
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x48], 0
	mov	rbp, rbp
	jne	.label_530
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_530
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_497
.label_530:
	nop	
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	nop	
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_514:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rsp, rsp
	movzx	ecx, byte ptr [rsp + 8]
	mov	rsp, rsp
	cmp	rax, -2
	mov	rbp, rbp
	jne	.label_510
	mov	byte ptr [r15 + rcx], 1
.label_510:
	mov	rsp, rsp
	inc	cl
	nop	
	mov	byte ptr [rsp + 8], cl
	jne	.label_514
	jmp	.label_499
	nop	dword ptr [rax]
.label_520:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	lea	rsi, [rsi]
	test	r14b, r14b
	je	.label_518
	nop	
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_522
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_522:
	mov	rsp, rsp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_518:
	mov	rsp, rsp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_499
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_499
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rsp, rsp
	mov	rdx, rcx
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	lea	rdi, [rdi]
	jae	.label_519
	add	r12, 0x18
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_512:
	mov	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + r12]
	lea	rsi, [rsi]
	and	ecx, esi
	cmp	ecx, 0x200001
	lea	rsi, [rsi]
	jne	.label_519
	nop	
	mov	al, byte ptr [rax + r12 - 8]
	mov	rbp, rbp
	mov	byte ptr [r13], al
	nop	
	inc	r13
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	nop	
	jb	.label_512
.label_519:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x144]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, r13
	mov	rbp, rbp
	jne	.label_527
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x144]
	nop	
	call	towlower
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	je	.label_527
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_527:
	nop	
	mov	r13, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	jmp	.label_499
	nop	dword ptr [rax + rax]
.label_506:
	nop	
	cmp	ebx, 2
	je	.label_504
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_499
	jmp	.label_504
.label_497:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_499
	nop	
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_526:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + rbp*4]
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_516
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_516
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_523
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	ebx, dword ptr [rax + rbx*4]
.label_523:
	nop	
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_516:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_496
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_496
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	lea	rsi, [rsi]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_496
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_496:
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_526
	nop	word ptr cs:[rax + rax]
.label_499:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	nop	
	inc	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x10]
	nop	
	jl	.label_508
.label_517:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_504:
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	lea	rsi, [rsi]
	call	memset
	lea	rdi, [rdi]
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_517
	or	byte ptr [r13 + 0x38], 1
	nop	
	jmp	.label_517
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408eb0
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
	je	.label_534
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
	jne	.label_535
	mov	al, byte ptr [r15 + 0x38]
	lea	rsi, [rsi]
	and	al, 0x7f
	lea	rdi, [rdi]
	jmp	.label_532
.label_535:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	nop	
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_532:
	mov	rbp, rbp
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	lea	rdi, [rdi]
	cmovne	ebx, eax
	test	ebx, ebx
	nop	
	jne	.label_533
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_534:
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_533:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	mov	rsp, rsp
	jmp	.label_534
	nop	
	.section	.text
	.align	32
	#Procedure 0x408fe0
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
	jae	.label_536
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
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
	je	.label_538
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_537
.label_539:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_538:
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
.label_537:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_539
.label_536:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409090
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
	je	.label_540
	call	free_dfa_content
.label_540:
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
	#Procedure 0x4090f0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_545
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_545
	mov	ebp, 0x400ff
	jmp	.label_551
	nop	word ptr cs:[rax + rax]
.label_553:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_551:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_556
	nop	
	cmp	ecx, 6
	jne	.label_557
	nop	
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, r15
	mov	rsp, rsp
	jmp	.label_547
	nop	dword ptr [rax]
.label_556:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_547:
	lea	rsi, [rsi]
	call	free
.label_557:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_553
.label_545:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_555
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_550:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_546
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_546:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_541
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_541:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_552
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_552:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_550
	lea	rdi, [rdi]
	jmp	.label_554
.label_555:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_554:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_543
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_544
	nop	word ptr cs:[rax + rax]
.label_542:
	mov	rdi, qword ptr [r14 + 0x40]
.label_544:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_549
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_558
.label_549:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_542
	mov	rdi, qword ptr [r14 + 0x40]
.label_543:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_548
	call	free
.label_548:
	nop	
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409370
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
	ja	.label_559
	test	bpl, 4
	nop	
	jne	.label_563
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_560
.label_563:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_560:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_561
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_562
.label_561:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_562:
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
.label_559:
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
	#Procedure 0x409450

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
	sub	rsp, 0x268
	mov	r13, r9
	mov	rbp, rbp
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x150], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_584
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	mov	rsp, rsp
	cmp	rbp, r8
	cmove	rax, rbx
	nop	
	mov	r12, rax
.label_584:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	cmovb	rbx, rcx
	mov	eax, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_643
	mov	rbp, rbp
	mov	r15, qword ptr [r11 + 0x48]
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_643
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_643
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_650
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_650
	mov	rbp, rbp
	mov	rax, r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x250], r13
	nop	
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_686
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_580
.label_650:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_643
.label_686:
	cmp	qword ptr [rcx + 0x10], 0
	mov	rbp, rbp
	mov	r13, rax
	mov	rbp, rbp
	je	.label_663
	mov	rcx, r8
.label_580:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1c0], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	lea	rdi, [rdi]
	mov	al, 1
	cmp	rbx, r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], rbx
	jne	.label_666
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rsp, rsp
	setne	al
.label_666:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x227], al
	mov	rsp, rsp
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rbp, rbp
	cmp	rax, r12
	cmovge	r12, rax
	lea	rsi, [rsi]
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbx, qword ptr [rsp + 0x250]
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	shr	rcx, 0x16
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x118], cl
	test	rbx, rbx
	setne	bl
	lea	rdi, [rdi]
	or	bl, cl
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x11b], bl
	mov	dword ptr [rsp + 0x120], eax
	lea	rsi, [rsi]
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x119], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	cmp	rax, 2
	nop	
	mov	byte ptr [rsp + 0x11a], cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], rdx
	mov	qword ptr [rsp + 0xf0], rdx
	lea	rdi, [rdi]
	jl	.label_677
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	nop	
	mov	ecx, 0xc
	nop	
	cmp	r12, rax
	mov	rbp, rbp
	ja	.label_567
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	mov	rsp, rsp
	mov	r14, rdi
	lea	rsi, [r12*4]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	realloc
	mov	rbp, rbp
	mov	ecx, 0xc
	test	rax, rax
	je	.label_567
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x80]
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x210]
.label_677:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	test	bl, bl
	je	.label_739
	mov	r14, rdi
	mov	qword ptr [rsp + 0x80], r11
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	lea	rdi, [rdi]
	mov	ecx, 0xc
	mov	rbp, rbp
	test	rax, rax
	je	.label_567
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, r14
.label_739:
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r12
	mov	rsp, rsp
	lea	rax, [r11 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x11e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_576
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x210]
	mov	qword ptr [rsp + 0x98], rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	cmovle	rcx, qword ptr [rsp + 0x68]
.label_576:
	mov	qword ptr [rsp + 0xc0], rcx
	mov	qword ptr [rsp + 0xc8], rcx
	mov	qword ptr [rsp + 0xf8], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], r13
	mov	rbp, rbp
	mov	al, byte ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x260], rdi
	nop	
	shr	al, 7
	mov	byte ptr [rsp + 0x11d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x80], r11
	lea	r14, [rbx + rbx]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x130], edx
	mov	qword ptr [rsp + 0x138], -1
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_603
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_567
	lea	rdi, [rdi]
	shl	rbx, 4
	mov	rsp, rsp
	lea	rdi, [rbx + rbx*4]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	r13, rax
	mov	qword ptr [rsp + 0x168], r13
	mov	rbp, rbp
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x188], rax
	lea	rsi, [rsi]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_566
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	mov	ecx, 0xc
	nop	
	je	.label_567
.label_603:
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x230]
	mov	rbp, rbp
	sub	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x160], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x170], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x180], r14
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	ja	.label_655
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	test	dil, 2
	nop	
	jne	.label_655
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x148], 0
	jmp	.label_659
.label_655:
	lea	rsi, [rsi]
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_567
	lea	rdi, [rdi]
	lea	rdi, [r12*8 + 8]
	call	malloc
	lea	rsi, [rsi]
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x148], rax
	test	rax, rax
	je	.label_567
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	edi, dword ptr [rax + 0xb4]
.label_659:
	nop	
	mov	r13, qword ptr [rsp + 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x88], rbp
	nop	
	mov	eax, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x100], eax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rax, rbp
	mov	rsp, rsp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	rsp, rsp
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rbp, rbp
	test	r13, r13
	je	.label_676
	cmp	edi, 1
	je	.label_698
	nop	
	mov	ecx, 0x400000
	xor	eax, eax
	nop	
	cmp	qword ptr [rsp + 0x250], 0
	mov	rdx, qword ptr [rsp + 0x260]
	mov	rsp, rsp
	jne	.label_699
	mov	rbp, rbp
	and	rcx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	jne	.label_699
.label_698:
	mov	eax, 4
.label_699:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x250], 0
	setne	cl
	lea	rsi, [rsi]
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	rdi, [rdi]
	lea	edx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	edx, eax
.label_676:
	nop	
	mov	qword ptr [rsp + 8], rdi
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0x23f]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x88]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x1a8], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x1a0], rax
	cmp	rbx, rbp
	mov	eax, 1
	nop	
	mov	rcx, -1
	cmovge	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1c0], rcx
	lea	rsi, [rsi]
	add	edx, -4
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbx, r8
	jmp	.label_645
.label_702:
	mov	r12, qword ptr [rsp + 8]
	mov	rsp, rsp
	cmp	r12d, 1
	mov	rsp, rsp
	je	.label_731
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	je	.label_731
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	dword ptr [rax], -1
	je	.label_735
.label_731:
	mov	dword ptr [rsp + 0x170], 0
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x150]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x128]
	nop	
	mov	r14, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], 0
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_728
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_572
.label_728:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_577
	lea	rax, [r14 - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xe8], rax
	je	.label_581
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x227]
	mov	rbp, rbp
	jl	.label_587
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_599:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebp, -1
	jne	.label_595
	dec	rcx
	mov	rbp, rbp
	jg	.label_599
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rsp, rsp
	jmp	.label_627
.label_587:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x110]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_604
	lea	rsi, [rsi]
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_572
	nop	
	jmp	.label_682
.label_595:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_620
.label_725:
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_572
.label_682:
	lea	rsi, [rsi]
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_627
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_627
.label_577:
	mov	ecx, dword ptr [rsp + 0x100]
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_627
.label_581:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0x227]
.label_627:
	test	cl, 1
	mov	rbp, rbp
	jne	.label_604
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_572
	mov	eax, ecx
	nop	
	and	eax, 4
	sete	sil
	nop	
	mov	edx, ecx
	and	edx, 2
	mov	rbp, rbp
	je	.label_640
	test	sil, sil
	jne	.label_640
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_572
.label_640:
	test	edx, edx
	nop	
	jne	.label_646
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_572
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_572
.label_646:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_572
.label_620:
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	lea	rdi, [rdi]
	je	.label_604
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_725
.label_604:
	nop	
	mov	rbx, qword ptr [r15 + 0x50]
.label_572:
	mov	cl, byte ptr [rsp + 0x23f]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_746
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], edx
	je	.label_588
	mov	qword ptr [rax + r14*8], rbx
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x98], 0
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], eax
	jne	.label_667
.label_588:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x23f], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	r15, -1
	mov	rbp, rbp
	test	cl, 0x10
	mov	eax, 0
	jne	.label_673
.label_651:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x1a8]
.label_614:
	mov	qword ptr [rsp + 0x1b0], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	cmp	qword ptr [rsp + 0xf8], rbp
	mov	rsp, rsp
	jle	.label_583
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	sete	al
	or	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x25f], al
	mov	r14, rbx
	jmp	.label_607
.label_690:
	mov	qword ptr [rsp + 0x228], r15
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	jle	.label_694
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x70], rsi
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_642
.label_703:
	mov	rax, qword ptr [rsp + 0xd8]
	test	rax, rax
	jle	.label_704
	lea	rdx, [rax - 1]
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0xe8], rdx
	je	.label_570
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_712
	mov	rcx, qword ptr [rsp + 0xa0]
.label_720:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_716
	mov	rbp, rbp
	dec	rax
	jg	.label_720
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_570
.label_585:
	lea	rsi, [rsi]
	cmp	r14, rbx
	mov	rsp, rsp
	je	.label_722
	mov	dword ptr [rsp + 0x30], 0
.label_722:
	mov	r14, qword ptr [rsp + 0x38]
	cmove	r14, qword ptr [rsp + 0x240]
	mov	rsp, rsp
	jmp	.label_726
.label_712:
	nop	
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x110]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	lea	rsi, [rsi]
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_570
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_570
	jmp	.label_743
.label_716:
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_744
.label_615:
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	ebx, 0xa
	jne	.label_570
.label_743:
	mov	rbp, rbp
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_570
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_570
.label_653:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x4c], eax
	nop	
	mov	qword ptr [rsp + 0x198], rcx
	mov	qword ptr [rsp + 0x70], rsi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	lea	rsi, [rsi]
	xor	edx, edx
	cmp	ebx, 0x5f
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_696
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x198]
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	je	.label_660
	jmp	.label_592
.label_610:
	mov	rsp, rsp
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_708
	test	eax, eax
	lea	rdi, [rsp + 0x50]
	je	.label_723
	mov	rsp, rsp
	jmp	.label_590
.label_696:
	mov	rsi, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x198]
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	jmp	.label_592
.label_708:
	lea	rdi, [rsp + 0x50]
	jmp	.label_590
.label_642:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	test	eax, 0x100000
	je	.label_613
	mov	r12d, eax
	shr	r12d, 8
	mov	rbp, rbp
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rsp, rsp
	je	.label_619
	test	rcx, rcx
	js	.label_625
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xe8], rcx
	mov	rsp, rsp
	je	.label_629
	mov	r8d, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_717
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdx, [rcx + 1]
.label_635:
	mov	rsp, rsp
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebx, -1
	jne	.label_633
	mov	rbp, rbp
	dec	rdx
	test	rdx, rdx
	jg	.label_635
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x100]
	lea	rsi, [rsi]
	jmp	.label_637
.label_717:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + rcx]
	nop	
	mov	dl, al
	shr	dl, 6
	nop	
	movzx	edx, dl
	nop	
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_621
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_592
.label_633:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11e], 0
	mov	eax, r8d
	mov	rsp, rsp
	jne	.label_653
.label_660:
	lea	rsi, [rsi]
	mov	r8d, eax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_656
	jmp	.label_637
.label_621:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_637
.label_656:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_637
	xor	edi, edi
	jmp	.label_637
.label_625:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x100]
	jmp	.label_637
.label_629:
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x130]
	nop	
	and	edi, 2
	nop	
	xor	edi, 0xa
.label_637:
	mov	eax, edi
	and	eax, 1
	lea	rdi, [rdi]
	sete	dl
	test	r12b, 4
	je	.label_658
	lea	rdi, [rdi]
	test	eax, eax
	mov	eax, r8d
	je	.label_613
	jmp	.label_592
.label_658:
	nop	
	mov	eax, r8d
.label_592:
	test	ah, 8
	je	.label_674
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_613
.label_674:
	test	ah, 0x20
	je	.label_678
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 2
	lea	rdi, [rdi]
	je	.label_613
.label_678:
	test	r12b, r12b
	jns	.label_619
	mov	rbp, rbp
	and	edi, 8
	lea	rsi, [rsi]
	je	.label_613
.label_619:
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rsp, rsp
	lea	rdx, [rsp + 0x90]
	call	check_node_accept_bytes
	mov	rsp, rsp
	mov	rsi, rbx
	test	eax, eax
	nop	
	je	.label_613
	movsxd	r12, eax
	lea	rdi, [rdi]
	add	r12, qword ptr [rsp + 0xd8]
	nop	
	mov	ecx, dword ptr [rsp + 0x170]
	cmp	ecx, eax
	nop	
	cmovl	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x170], ecx
	mov	rbx, qword ptr [rsp + 0x150]
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	nop	
	cmp	rcx, r12
	jg	.label_692
	cmp	rcx, rax
	jl	.label_706
.label_692:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	rcx, r12
	lea	rsi, [rsi]
	jg	.label_707
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_707
.label_706:
	mov	rbp, rbp
	lea	esi, [r12 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	call	extend_buffers
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_714
.label_707:
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	sub	rdx, rbx
	mov	rsp, rsp
	jle	.label_718
	nop	
	mov	rax, qword ptr [rsp + 0x148]
	nop	
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], r12
.label_718:
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rbp, rbp
	add	rdx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	nop	
	test	rbx, rbx
	je	.label_727
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x1d0]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	je	.label_740
	mov	rbp, rbp
	jmp	.label_639
.label_727:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1e0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
.label_740:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x198], rbx
	nop	
	test	r12, r12
	mov	rsp, rsp
	jle	.label_565
	mov	rbp, rbp
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0xe8], rax
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	je	.label_571
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	jl	.label_578
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r12
.label_608:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_586
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	jg	.label_608
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_590
.label_578:
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0x110]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	nop	
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	lea	rdi, [rdi]
	jb	.label_590
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_590
	jmp	.label_609
.label_586:
	nop	
	cmp	byte ptr [rsp + 0x11e], 0
	mov	rsp, rsp
	jne	.label_610
.label_723:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ebx, 0xa
	mov	rsp, rsp
	jne	.label_590
.label_609:
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11d], 0
	mov	rbp, rbp
	jne	.label_590
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_590
.label_565:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	jmp	.label_590
.label_571:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
.label_590:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x1d0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x198], 0
	mov	rcx, qword ptr [rsp + 0x148]
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_631
	mov	rdi, qword ptr [rsp + 0x1e0]
	call	free
.label_631:
	mov	rax, qword ptr [rsp + 0x148]
	cmp	qword ptr [rax + r12*8], 0
	lea	rsi, [rsi]
	mov	rsi, rbp
	jne	.label_613
	nop	
	mov	eax, dword ptr [rsp + 0x50]
	nop	
	test	eax, eax
	nop	
	jne	.label_639
.label_613:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jl	.label_642
.label_694:
	mov	dword ptr [rsp + 0x24c], 0
	mov	r12b, byte ptr [rsp + 0x227]
	nop	
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_644
.label_704:
	mov	ecx, dword ptr [rsp + 0x100]
.label_570:
	mov	rbp, rbp
	and	ecx, 1
	nop	
	shl	rcx, 8
	mov	rbp, rbp
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rsi, [rsi]
	jmp	.label_654
.label_714:
	mov	dword ptr [rsp + 0x50], eax
.label_639:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24c], eax
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x227]
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_654
.label_744:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_570
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_615
	jmp	.label_570
.label_607:
	mov	rbp, rbp
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x240], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	cmp	rdx, rcx
	jl	.label_669
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_679
.label_669:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x240], rcx
	jl	.label_683
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_683
.label_679:
	add	ebp, 2
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_688
.label_683:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_690
.label_644:
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_710:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_701
	mov	qword ptr [rsp + 0x228], r15
	mov	r15, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	jne	.label_703
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x128]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	build_trtable
	test	al, al
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rdi, [rdi]
	jne	.label_710
	mov	dword ptr [rsp + 0x24c], 0xc
	xor	ebx, ebx
	jmp	.label_654
.label_701:
	mov	rbx, qword ptr [rax + rbp*8]
.label_654:
	cmp	qword ptr [rsp + 0x148], 0
	je	.label_719
	lea	rdi, [rsp + 0x24c]
	lea	rsi, [rsp + 0x90]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	rsp, rsp
	mov	rbx, rax
.label_719:
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_602
	nop	
	cmp	dword ptr [rsp + 0x24c], 0
	lea	rdi, [rdi]
	jne	.label_566
	mov	rax, qword ptr [rsp + 0x148]
	lea	rdi, [rdi]
	test	rax, rax
	setne	cl
	lea	rsi, [rsi]
	and	cl, byte ptr [rsp + 0x25f]
	nop	
	movzx	ecx, cl
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_730
	jmp	.label_583
.label_575:
	mov	rax, qword ptr [rsp + 0x148]
.label_730:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xd8]
	nop	
	mov	rcx, qword ptr [rsp + 0x150]
	nop	dword ptr [rax + rax]
.label_747:
	mov	rbp, rbp
	cmp	rdx, rcx
	jge	.label_583
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xd8], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_747
	xor	edx, edx
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_662
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24c]
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_575
.label_662:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_583
.label_602:
	mov	eax, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_585
	mov	r14, qword ptr [rsp + 0x38]
.label_726:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	mov	rbp, rbp
	jne	.label_589
	mov	qword ptr [rsp + 0x38], r14
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	nop	
	jmp	.label_593
.label_589:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	test	al, al
	jns	.label_569
	lea	rdi, [rsp + 0x90]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	test	rax, rax
	nop	
	jne	.label_569
	mov	qword ptr [rsp + 0x38], r14
.label_593:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf8], rbp
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jg	.label_607
	jmp	.label_583
.label_569:
	nop	
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_614
	jmp	.label_568
.label_583:
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	
	test	rcx, rcx
	je	.label_616
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	add	qword ptr [rcx], rax
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_568
.label_616:
	mov	rbp, rbp
	mov	rbp, r15
.label_568:
	mov	byte ptr [rsp + 0x227], r12b
	mov	rbp, rbp
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	je	.label_623
	mov	ecx, 0xc
	mov	rbp, rbp
	cmp	rbp, -2
	nop	
	je	.label_567
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 1
	mov	rsp, rsp
	seta	al
	mov	qword ptr [rsp + 0x138], rbp
	mov	rcx, qword ptr [rsp + 0x260]
	test	byte ptr [rcx + 0x38], 0x10
	lea	rsi, [rsi]
	sete	bl
	and	bl, al
	mov	rbp, rbp
	je	.label_632
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rax
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x80]
	jmp	.label_647
.label_632:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x80]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	je	.label_601
	mov	rax, qword ptr [rsp + 0x148]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	lea	rdi, [rdi]
	test	bl, 1
	mov	rsp, rsp
	je	.label_661
.label_647:
	nop	
	test	byte ptr [r12 + 0xb0], 1
	mov	rsp, rsp
	jne	.label_664
.label_661:
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	je	.label_601
.label_664:
	mov	qword ptr [rsp + 0x80], r12
	mov	rbp, rbp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_566
	mov	r14, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x240], rax
	lea	rsi, [rsi]
	lea	r12, [rbp*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_684
	cmp	qword ptr [r14 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_687
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r14
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	r15, rax
	nop	
	test	r15, r15
	je	.label_693
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, r12
	mov	rsp, rsp
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0x38], r12
	mov	qword ptr [rsp + 0x1d0], r12
	nop	
	mov	qword ptr [rsp + 0x1d8], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	sift_states_backward
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_745
.label_733:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_652
	cmp	qword ptr [r15], 0
	nop	
	mov	esi, 0
	jne	.label_652
	lea	rdi, [rdi]
	mov	r12, r15
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_713
	mov	rax, qword ptr [rsp + 0x148]
	dec	rbp
	nop	dword ptr [rax]
.label_737:
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_732
	lea	rdi, [rdi]
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_736
.label_732:
	lea	rcx, [rbp - 1]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_737
	jmp	.label_713
.label_736:
	mov	rbp, rbp
	lea	r15, [rsp + 0x90]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x240], rax
	lea	rdx, [rbp*8 + 8]
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x1d0], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1d8], r12
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x1d0]
	mov	rbp, rbp
	call	sift_states_backward
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_733
	lea	rsi, [rsi]
	mov	r12, r15
	jmp	.label_573
.label_687:
	nop	
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	qword ptr [rsp + 0x1d0], rbx
	mov	qword ptr [rsp + 0x1d8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rsp, rsp
	lea	rax, [rsp + 0x1f0]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x90]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x1d0]
	mov	rsp, rsp
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_573
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	mov	r12d, 0
	jne	.label_628
.label_713:
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	call	free
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 8]
.label_623:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	call	match_ctx_clean
.label_735:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x88]
	add	rbp, qword ptr [rsp + 0x1c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_567
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r12
	cmp	r14, rbp
	jge	.label_645
	jmp	.label_567
.label_673:
	test	cl, cl
	js	.label_649
	test	r12b, r12b
	lea	rsi, [rsi]
	mov	r15, r14
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_651
	mov	rbp, r14
	jmp	.label_568
.label_667:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x23f], cl
	lea	rbp, [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	jne	.label_626
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x68], 0x40
	nop	
	je	.label_665
	mov	rsp, rsp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24c], eax
	mov	rsp, rsp
	test	eax, eax
	jne	.label_668
.label_665:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	mov	cl, byte ptr [rsp + 0x23f]
	jmp	.label_588
.label_649:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	nop	
	test	rax, rax
	sete	cl
	lea	rsi, [rsi]
	setne	al
	movzx	eax, al
	mov	rsp, rsp
	or	cl, r12b
	je	.label_681
	mov	rbp, rbp
	or	r15, r14
	jmp	.label_651
.label_681:
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_568
.label_652:
	nop	
	mov	qword ptr [rsp + 0x38], r12
	lea	rsi, [rsi]
	test	rbp, rbp
	js	.label_689
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_691
.label_597:
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_691:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_695
	test	rdx, rdx
	nop	
	je	.label_700
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_671
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + r12*8], rax
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24c]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_700
	jmp	.label_671
.label_695:
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + r12*8], rdx
.label_700:
	cmp	r12, rbp
	jl	.label_597
.label_689:
	xor	eax, eax
.label_671:
	nop	
	mov	rdi, r15
	nop	
	mov	ebx, eax
	call	free
	nop	
	mov	eax, ebx
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 0
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	je	.label_628
	jmp	.label_573
.label_745:
	mov	qword ptr [rsp + 0x38], r12
	mov	r12, r15
.label_573:
	mov	r15, rbx
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	je	.label_601
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, r15
	je	.label_623
	mov	rbp, rbp
	jmp	.label_567
.label_626:
	lea	rsi, [rsi]
	movsxd	rbp, eax
	mov	rsp, rsp
	jmp	.label_568
.label_668:
	movsxd	rbp, eax
	lea	rsi, [rsi]
	jmp	.label_568
.label_645:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	eax, 4
	ja	.label_574
	lea	rsi, [rsi]
	jmp	qword ptr [(rax * 8) + label_579]
.label_2186:
	lea	rsi, [rsi]
	cmp	rbp, rbx
	mov	rax, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x210]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x250]
	jl	.label_582
	nop	dword ptr [rax + rax]
.label_600:
	xor	eax, eax
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jge	.label_591
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx + rbp]
.label_591:
	test	rsi, rsi
	je	.label_596
	movzx	eax, byte ptr [rsi + rax]
.label_596:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_598
	nop	
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_600
	jmp	.label_582
.label_574:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	jmp	.label_605
	nop	word ptr cs:[rax + rax]
.label_612:
	nop	
	add	rbp, qword ptr [rsp + 0x1c0]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rdi]
	jl	.label_567
	lea	rdi, [rdi]
	cmp	rbp, r14
	jle	.label_605
	mov	rsp, rsp
	jmp	.label_567
.label_634:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	nop	
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_567
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rcx, rbp
	mov	rbp, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	jmp	.label_630
	nop	word ptr cs:[rax + rax]
.label_605:
	mov	rcx, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0xc8]
	jae	.label_634
.label_630:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rbp, rdx
	nop	
	mov	edx, 0
	nop	
	jge	.label_638
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	movzx	edx, byte ptr [rdx + rcx]
.label_638:
	cmp	byte ptr [r13 + rdx], 0
	mov	rbp, rbp
	je	.label_612
	nop	
	jmp	.label_648
.label_2187:
	nop	
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rdx, qword ptr [rsp + 0x250]
	jge	.label_594
	nop	word ptr cs:[rax + rax]
.label_657:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	mov	rsp, rsp
	jne	.label_594
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], rbp
	mov	rsp, rsp
	cmp	rbp, r14
	nop	
	jl	.label_657
	jmp	.label_594
.label_2188:
	cmp	rbp, r14
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	jge	.label_594
	nop	dword ptr [rax]
.label_670:
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	lea	rdi, [rdi]
	jne	.label_594
	mov	rbp, rbp
	inc	rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_670
.label_594:
	mov	qword ptr [rsp + 0x250], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x210], rcx
	cmp	rbp, r14
	lea	rsi, [rsi]
	jne	.label_648
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0x210]
	jge	.label_680
	movzx	eax, byte ptr [rcx + r14]
.label_680:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x250]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_685
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
.label_685:
	mov	rsp, rsp
	mov	ecx, 1
	nop	
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	lea	rdi, [rdi]
	jne	.label_648
	mov	rbp, rbp
	jmp	.label_567
.label_598:
	mov	rax, rbp
.label_582:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_567
.label_648:
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	ecx, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_702
	jmp	.label_567
.label_688:
	cmp	eax, 0xc
	nop	
	jne	.label_705
.label_566:
	nop	
	mov	ecx, 0xc
.label_567:
	lea	rsi, [rsi]
	mov	ebx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_711
	nop	
	lea	rdi, [rsp + 0x90]
	nop	
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x188]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x168]
	lea	rsi, [rsi]
	call	free
.label_711:
	nop	
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11b], 0
	lea	rsi, [rsi]
	je	.label_729
	mov	rdi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	call	free
.label_729:
	lea	rdi, [rdi]
	mov	eax, ebx
.label_643:
	lea	rsi, [rsi]
	add	rsp, 0x268
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_663:
	lea	rdi, [rdi]
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_738
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_741
.label_738:
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rbp, rbp
	nop	
	je	.label_742
	mov	rbp, rbp
	test	r8, r8
	mov	ebp, 0
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_643
	jmp	.label_580
.label_746:
	cmp	dword ptr [rsp + 0x24c], 0xc
	mov	rsp, rsp
	je	.label_566
	nop	
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_741:
	mov	rcx, r8
	jmp	.label_580
.label_742:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_580
.label_628:
	mov	rdi, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	nop	
	mov	qword ptr [rsp + 0x138], rbp
	mov	r12, qword ptr [rsp + 0x80]
.label_601:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x2a0]
	cmp	qword ptr [rsp + 0x230], rax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x2a8]
	je	.label_567
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_606
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	edx, [rsi + 7]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x230]
	sub	edx, edi
	lea	rax, [rsi - 2]
	mov	rbp, rbp
	sub	rax, rdi
	nop	
	mov	ecx, 1
	lea	rsi, [rsi]
	test	dl, 7
	je	.label_611
	mov	rbp, rbp
	lea	rdx, [r14 + 0x10]
	lea	rdi, [rdi]
	lea	esi, [rsi + 7]
	sub	esi, edi
	nop	
	and	esi, 7
	mov	rbp, rbp
	xor	edi, edi
.label_624:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	mov	rbp, rbp
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jne	.label_624
	nop	
	add	rcx, 2
.label_611:
	mov	rsp, rsp
	cmp	rax, 7
	jb	.label_606
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_636:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	nop	
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	mov	rsp, rsp
	jne	.label_636
.label_606:
	nop	
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_617
	mov	rax, qword ptr [rsp + 0x260]
	mov	al, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	and	al, 0x10
	jne	.label_617
	mov	rax, qword ptr [rsp + 0x80]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_672
	nop	
	xor	eax, eax
	jmp	.label_675
.label_693:
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	qword ptr [rsp + 0x1a0], rax
.label_684:
	mov	rdi, qword ptr [rsp + 0x1a0]
	nop	
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	jmp	.label_566
.label_672:
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_675:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x260]
	movzx	r8d, al
	lea	rsi, [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	set_regs
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_567
.label_617:
	nop	
	mov	r10b, byte ptr [rsp + 0x11c]
	mov	r8, qword ptr [rsp + 0xa8]
	lea	rdx, [r14 + 8]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x230]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	r11, [rsp + 0xc8]
	mov	rsp, rsp
	jmp	.label_697
.label_724:
	mov	rbx, qword ptr [rsp + 0xc0]
	cmp	rdi, rbx
	lea	rsi, [rsi]
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx - 8], rdi
	lea	rsi, [rsi]
	mov	rsi, rcx
	shl	rsi, 4
	mov	rsp, rsp
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rdx], rbx
	jmp	.label_709
.label_697:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	nop	
	je	.label_721
	test	r10b, r10b
	jne	.label_724
	mov	rbp, rbp
	mov	rbx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rbp, rdx
.label_709:
	nop	
	mov	rsi, qword ptr [rsp + 0x88]
	add	rdi, rsi
	nop	
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_721:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_697
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0x80]
	jle	.label_564
	mov	rbp, rbp
	lea	rcx, [r9 - 1]
	lea	rdi, [rdi]
	xor	eax, eax
	test	r9b, 3
	je	.label_734
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	shl	rdx, 4
	add	rdx, r14
	nop	
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_715:
	inc	rax
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_715
.label_734:
	lea	rsi, [rsi]
	cmp	rcx, 3
	mov	rsp, rsp
	jb	.label_564
	mov	rcx, r9
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	add	rdx, r14
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_641:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x30], -1
	nop	
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_641
.label_564:
	mov	rax, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	test	rax, rax
	je	.label_567
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_567
	sub	qword ptr [rsp + 0x10], r9
	lea	rdi, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
.label_622:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	nop	
	je	.label_618
	lea	rsi, [rsi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_618:
	lea	rsi, [rsi]
	inc	rdx
	add	rdi, 0x10
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x10], rdx
	nop	
	jne	.label_622
	jmp	.label_567
.label_705:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x46c
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b960
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
	#Procedure 0x40b990

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
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	mov	rsp, rsp
	js	.label_751
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r9
	cmp	rcx, rdx
	nop	
	jg	.label_751
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rbp, rbp
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	rsp, rsp
	mov	al, r13b
	lea	rdi, [rdi]
	jle	.label_748
	test	r13b, 8
	mov	rbp, rbp
	mov	al, r13b
	lea	rdi, [rdi]
	jne	.label_748
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	nop	
	mov	al, r13b
	je	.label_748
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rsp, rsp
	mov	rdx, r15
	mov	rcx, rbp
	nop	
	mov	al, byte ptr [rbx + 0x38]
.label_748:
	xor	esi, esi
	test	r14, r14
	lea	rdi, [rdi]
	mov	ebp, 1
	je	.label_771
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	and	cl, 0x10
	jne	.label_756
	nop	
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_770
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_772
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	cmovle	r14, rcx
	nop	
	mov	ebp, 1
	cmovg	rbp, rax
	mov	rbp, rbp
	jmp	.label_775
.label_771:
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	r15, rcx
	lea	rsi, [rsi]
	jmp	.label_756
.label_770:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
.label_772:
	mov	rsp, rsp
	inc	rbp
.label_775:
	lea	rdi, [rdi]
	mov	rsi, r14
.label_756:
	nop	
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_751
	mov	cl, r13b
	nop	
	shr	cl, 5
	mov	rsp, rsp
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	mov	rsp, rsp
	or	r13d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], r13d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x40]
	nop	
	call	re_search_internal
	nop	
	test	eax, eax
	je	.label_767
	cmp	eax, 1
	sete	al
	mov	rbp, rbp
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	jmp	.label_758
.label_767:
	mov	qword ptr [rsp + 0x38], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	mov	rsp, rsp
	je	.label_773
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	lea	rsi, [rsi]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_749
	lea	rsi, [rsi]
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	nop	
	je	.label_757
	mov	r13, r12
	mov	qword ptr [rsp + 0x40], rdi
	mov	rsp, rsp
	mov	r15, r8
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_763
	lea	r12, [rbx*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	call	malloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	lea	rdi, [rdi]
	xor	r13d, r13d
	test	r14, r14
	je	.label_766
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	r12, rax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_752
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_761
.label_749:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	mov	rsp, rsp
	jae	.label_761
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.24
	nop	
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_757:
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_774
	mov	rbx, rax
	mov	rdi, r15
.label_761:
	test	rbp, rbp
	jle	.label_750
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	test	bpl, 1
	je	.label_754
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_754:
	lea	rdi, [rdi]
	cmp	rbp, 1
	mov	rbp, rbp
	je	.label_765
	mov	rax, rbp
	lea	rsi, [rsi]
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	mov	rbp, rbp
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_755:
	mov	rbx, qword ptr [rsi - 0x18]
	nop	
	mov	qword ptr [rdx - 8], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	mov	rbp, rbp
	add	rsi, 0x20
	mov	rsp, rsp
	add	rdx, 0x10
	add	rax, -2
	jne	.label_755
.label_765:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	jmp	.label_759
.label_750:
	xor	ebp, ebp
.label_759:
	mov	rbp, rbp
	cmp	rbp, rbx
	jae	.label_762
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_764:
	mov	qword ptr [rcx + rbp*8], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rbp*8], -1
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, qword ptr [r12]
	lea	rdi, [rdi]
	jb	.label_764
.label_762:
	nop	
	mov	r13d, r14d
.label_753:
	nop	
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	lea	rsi, [rsi]
	and	al, 0xf9
	mov	cl, r13b
	mov	rbp, rbp
	and	cl, 6
	mov	rsp, rsp
	or	cl, al
	lea	rdi, [rdi]
	and	r13b, 6
	lea	rdi, [rdi]
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	mov	rbp, rbp
	je	.label_758
.label_773:
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_758
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	r14, rax
	jne	.label_768
	nop	
	mov	r14, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	sub	r14, rax
.label_758:
	lea	rsi, [rsi]
	call	free
.label_751:
	mov	rax, r14
	mov	rbp, rbp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_774:
	mov	qword ptr [rsp + 0x40], r8
	mov	rdi, qword ptr [r12 + 8]
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_760
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_769
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r15
	jmp	.label_761
.label_752:
	mov	rsp, rsp
	mov	rdi, r14
	call	free
.label_766:
	mov	r8, r15
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_753
.label_769:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_760:
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	jmp	.label_753
.label_763:
	mov	edi, OFFSET FLAT:.str.23
	nop	
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_768:
	mov	edi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22
	nop	
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bf10

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
	#Procedure 0x40bf40
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	nop	
	mov	r15, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_776
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_779
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_776
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_780
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_777
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_776
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, rax
	nop	
	call	memcpy
	mov	rdi, r12
	mov	rsp, rsp
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	nop	
	mov	r9, r13
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_780
.label_779:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_781
.label_776:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_778
.label_781:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_780
.label_777:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_780:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rcx, r9
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_778:
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0f0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rax, rbx
	or	rax, r14
	lea	rdi, [rdi]
	or	rax, rbp
	js	.label_782
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_787
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_782
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_783
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_785
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_782
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	r13, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_783
.label_787:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_784
.label_782:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_786
.label_784:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_783
.label_785:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_783:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	nop	
	mov	rax, rbx
.label_786:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c290
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	mov	r9b, al
	mov	rbp, rbp
	or	r9b, 2
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_788
	lea	rsi, [rsi]
	mov	al, r9b
.label_788:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c2d0

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
	je	.label_789
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_789:
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
	#Procedure 0x40c350

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
	jl	.label_791
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_790
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_790
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_791
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_790
	mov	qword ptr [rbx + 0x18], rax
.label_791:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_792
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_790
	nop	
	mov	qword ptr [rbx + 8], rax
.label_792:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_790:
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
	#Procedure 0x40c420

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
	mov	r12, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	cmp	r13, rax
	nop	
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_818
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_818
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_820
.label_818:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_804
.label_820:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_824
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_825
.label_847:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_831
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_835
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_835
.label_831:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_843
.label_799:
	mov	rax, r15
	jmp	.label_816
.label_843:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_799
	nop	word ptr cs:[rax + rax]
.label_825:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_805
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_805
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_816
	nop	word ptr cs:[rax + rax]
.label_805:
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	nop	
	add	rbp, r15
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rax, [rbp - 1]
	mov	rsp, rsp
	cmp	rax, -4
	ja	.label_847
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_798
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	add	rdi, r15
	nop	
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	nop	
	add	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	nop	
	jmp	.label_813
.label_798:
	mov	rbp, rbp
	mov	esi, ebx
	mov	dword ptr [rsp + 0x68], esi
	mov	rbx, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x10]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	lea	rdi, [rdi]
	jne	.label_844
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
.label_813:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_816
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	lea	rdi, [rax + r15*4 + 4]
	mov	rbp, rbp
	lea	rdx, [rbp*4 - 4]
	lea	rdi, [rdi]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_816:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_825
	jmp	.label_851
.label_844:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_793
.label_835:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_824:
	lea	rsi, [rsi]
	mov	rax, r15
.label_851:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_841
.label_804:
	cmp	r15, r13
	jge	.label_807
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_793:
	nop	
	mov	rdx, r13
	nop	
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_812
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_803:
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r14
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 - 1]
	cmp	rax, -4
	mov	rbp, rbp
	ja	.label_827
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_809
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rsi, [rsi]
	call	wcrtomb
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	mov	rbp, rbp
	jne	.label_850
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_795
.label_812:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_803
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_817:
	cmp	rsi, rdx
	jge	.label_814
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	rbp, rbp
	mov	byte ptr [rsp + rsi + 0x10], bl
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jl	.label_817
	mov	rbx, r8
	nop	
	jmp	.label_803
.label_827:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_826
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_829
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_829
.label_826:
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	mov	rbp, rbp
	movzx	edx, al
	test	rcx, rcx
	jne	.label_839
.label_830:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_845
.label_833:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	nop	
	cmp	r14, -1
	lea	rsi, [rsi]
	je	.label_797
.label_838:
	mov	rbp, r15
	nop	
	jmp	.label_804
.label_850:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_809
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_811
.label_829:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_807:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_841:
	xor	eax, eax
.label_801:
	add	rsp, 0x78
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_809:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_795:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_834
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_840
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_840
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_848
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2, xmmword ptr [rip + label_445]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_848:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_815
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2, xmmword ptr [rip + label_445]
	nop	
.label_849:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	mov	rbp, rbp
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rsi, [rsi]
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	lea	rsi, [rsi]
	movdqa	xmm4, xmm3
	lea	rsi, [rsi]
	paddq	xmm4, xmm1
	nop	
	paddq	xmm3, xmm2
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	nop	
	add	rdx, 8
	nop	
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_849
.label_815:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_834
.label_840:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_802:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_802
.label_834:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_808
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_804
.label_808:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_804
.label_814:
	mov	rbx, r8
	jmp	.label_803
.label_811:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_832
	nop	
	shl	rdi, 3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	lea	rdi, [rdi]
	call	malloc
	mov	r8, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_842
.label_832:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_846
	nop	
	test	r15, r15
	je	.label_794
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_796
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_796
	lea	rdi, [rdi]
	lea	rdi, [r15 - 4]
	mov	rsp, rsp
	mov	rsi, rdi
	lea	rdi, [rdi]
	shr	rsi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_806
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0, xmmword ptr [rip + label_445]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_806:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_822
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1, xmmword ptr [rip + label_445]
.label_828:
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	nop	
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jne	.label_828
.label_822:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_794
.label_796:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_796
.label_794:
	mov	byte ptr [r12 + 0x8c], 1
.label_846:
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x50], r8
	lea	rsi, [rsi]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	dword ptr [rax + r15*4], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
	jb	.label_800
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_821
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_821
	lea	rsi, [rsi]
	mov	rax, rcx
	or	rax, 1
	mov	rsp, rsp
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	nop	
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	mov	rbp, rbp
	movq	xmm2, rbx
	nop	
	mov	r11, rbx
	lea	rdi, [rdi]
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	lea	rdi, [rdi]
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8, xmmword ptr [rip + label_445]
	movdqa	xmm9, xmmword ptr [rip + label_836]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6, xmmword ptr [rip + label_837],  0xe8
.label_810:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	lea	rdi, [rdi]
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	nop	
	movdqa	xmm4, xmm5
	lea	rdi, [rdi]
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	mov	rbp, rbp
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	lea	rsi, [rsi]
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	nop	
	movdqa	xmm4, xmm3
	lea	rdi, [rdi]
	pcmpgtd	xmm4, xmm1
	lea	rsi, [rsi]
	pshufd	xmm2, xmm4, 0xa0
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	mov	rsp, rsp
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	nop	
	pandn	xmm0, xmm11
	nop	
	por	xmm0, xmm5
	mov	rbp, rbp
	pand	xmm7, xmm2
	nop	
	pandn	xmm2, xmm11
	nop	
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	lea	rdi, [rdi]
	movq	qword ptr [rdx + rsi*4], xmm6
	lea	rdi, [rdi]
	add	rsi, 4
	nop	
	cmp	r13, rsi
	jne	.label_810
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_800
.label_821:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_823:
	cmp	rax, r14
	nop	
	mov	rsi, r11
	cmovb	rsi, rax
	nop	
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rbp, rbp
	inc	rax
	cmp	rdi, rax
	jne	.label_823
.label_800:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_819
	add	qword ptr [r12 + 0x68], rcx
.label_819:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_804
.label_839:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_830
.label_845:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_833
.label_797:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_838
.label_842:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_801
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cff0

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
	jle	.label_860
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_854
	nop	word ptr [rax + rax]
.label_856:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_853
.label_855:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_859
.label_852:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_859:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_861
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rax*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	mov	rcx, rbp
.label_861:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_854
	mov	rbp, rbp
	jmp	.label_858
.label_862:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_857
	nop	
.label_864:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_863
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_864
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_857
.label_853:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_855
.label_863:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_857
	nop	word ptr cs:[rax + rax]
.label_854:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_862
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_857:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_856
	cmp	rax, -2
	jne	.label_852
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_856
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_860:
	mov	rcx, r13
.label_858:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d210

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
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_882
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_877
.label_882:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_867
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	jmp	.label_871
.label_878:
	mov	rbp, rbp
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_876
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_879
	nop	word ptr cs:[rax + rax]
.label_871:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp]
	call	peek_token
	nop	
	cdqe	
	nop	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 8
	lea	rdi, [rdi]
	cmp	ecx, 0xa
	mov	rbp, rbp
	mov	r15d, 0
	je	.label_866
	cmp	qword ptr [rsp + 8], 0
	nop	
	je	.label_874
	cmp	eax, 9
	mov	rsp, rsp
	mov	r15d, 0
	lea	rsi, [rsi]
	je	.label_866
.label_874:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r9, rbp
	call	parse_branch
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_870
	nop	
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_872
.label_870:
	mov	rax, qword ptr [rsp + 0x18]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_866:
	mov	ecx, dword ptr [r14 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_878
	mov	rax, qword ptr [r14 + 0x70]
.label_879:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_881
	mov	qword ptr [rbx], rbp
.label_881:
	test	r15, r15
	je	.label_875
	mov	rsp, rsp
	mov	qword ptr [r15], rbp
.label_875:
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, rbp
	mov	rbp, rbp
	je	.label_871
	jmp	.label_877
.label_867:
	mov	rbp, rbx
.label_877:
	mov	rsp, rsp
	mov	rax, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_872:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_877
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_869:
	lea	rdi, [rdi]
	mov	r15, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_869
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_869
	nop	word ptr cs:[rax + rax]
.label_873:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_865
	cmp	eax, 6
	lea	rdi, [rdi]
	jne	.label_880
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_868
	nop	dword ptr [rax]
.label_865:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x28]
.label_868:
	mov	rsp, rsp
	call	free
.label_880:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_877
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	lea	rdi, [rdi]
	mov	r15, rax
	je	.label_873
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	r15, rax
	je	.label_873
	jmp	.label_869
.label_876:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_877
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d570

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
	jle	.label_901
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [r15], r12b
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	nop	
	and	eax, 0xff9fffff
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	mov	rbp, rbp
	jl	.label_908
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_908
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_917
.label_908:
	cmp	r12d, 0x5c
	jne	.label_921
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_885
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_891
.label_883:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_898:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_895
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	mov	rbp, rbp
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	nop	
	or	eax, ecx
	jmp	.label_903
.label_901:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_884
.label_921:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_911
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	nop	
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	nop	
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	nop	
	or	cl, al
	mov	rsp, rsp
	movzx	ecx, cl
	shl	ecx, 0x16
	lea	rdi, [rdi]
	mov	eax, 0xffbfffff
	mov	rbp, rbp
	and	eax, dword ptr [r15 + 8]
	lea	rdi, [rdi]
	or	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_914
.label_885:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_887
.label_911:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	mov	rbp, rbp
	cmp	r12d, 0x5f
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	shr	eax, 3
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	shl	eax, 0x16
	or	eax, ebx
.label_914:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_889
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_902
	lea	rdi, [rdi]
	jmp	qword ptr [(rcx * 8) + label_905]
.label_2191:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_906
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_906
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x48], rcx
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	ja	.label_884
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_906:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_884
.label_889:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_886
	cmp	r12d, 0x3f
	je	.label_890
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_892
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_884
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_896
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_896
	test	dh, 8
	je	.label_884
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_884
.label_896:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_884
.label_895:
	movzx	ebp, r14b
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	mov	rbp, rbp
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	lea	rdi, [rdi]
	shl	eax, 0x16
	nop	
	or	eax, ebx
.label_903:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_913
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_915
	nop	
	jmp	qword ptr [(rdx * 8) + label_919]
.label_2225:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_884
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	nop	
	mov	qword ptr [r15], rax
	jmp	.label_884
.label_886:
	cmp	r12d, 0x7b
	je	.label_918
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_893
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_884
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_897
	jmp	.label_884
.label_917:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_887:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_884:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_913:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_907
	lea	rsi, [rsi]
	jmp	qword ptr [(rdx * 8) + label_910]
.label_2238:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_884
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_902:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_884
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_909
	jmp	.label_884
.label_2192:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_916
	nop	
	jmp	.label_884
.label_2193:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_920
	lea	rdi, [rdi]
	jmp	.label_884
.label_2194:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_2195:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_884
	jmp	.label_900
.label_2196:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_884
.label_890:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_884
	jmp	.label_899
.label_892:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_884
.label_918:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_904
	jmp	.label_884
.label_893:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_884
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_909
	lea	rdi, [rdi]
	jmp	.label_884
.label_907:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_912
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_884
	test	r13d, 0x80000
	jne	.label_884
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_884
.label_891:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_888
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_883
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_888
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_883
.label_888:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_894
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_894:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_898
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_883
	mov	rbp, rbp
	jmp	.label_898
.label_915:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_884
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_884
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_884
.label_2239:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_884
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_2240:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_884
.label_904:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_2241:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_884
	test	cx, cx
	js	.label_884
.label_909:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_884
.label_2242:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_884
.label_897:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_884
.label_912:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_884
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_884
.label_2221:
	test	r13d, 0x80000
	jne	.label_884
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_884
.label_2222:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_884
.label_916:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_2223:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_884
.label_920:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_2224:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_884
.label_900:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_2226:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_884
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_884
.label_2227:
	test	r13d, 0x80000
	jne	.label_884
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_884
.label_2228:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_884
.label_899:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
.label_2229:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_884
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_884
.label_2230:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_884
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_884
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de00

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
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	r12d, r12d
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_935
	nop	
	mov	eax, dword ptr [rbp]
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_935
	jmp	.label_929
	nop	word ptr cs:[rax + rax]
.label_923:
	mov	rsp, rsp
	test	rbx, rbx
	cmove	rbx, r12
.label_935:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	mov	ecx, eax
	or	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0xa
	je	.label_948
	test	r15, r15
	je	.label_930
	mov	rbp, rbp
	cmp	eax, 9
	je	.label_933
.label_930:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, r15
	mov	r9, rbp
	lea	rsi, [rsi]
	call	parse_expression
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	jne	.label_942
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_943
.label_942:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_923
	test	r12, r12
	mov	rbp, rbp
	je	.label_923
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_924
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x70]
.label_931:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	jmp	.label_935
.label_924:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_925
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_931
.label_943:
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_929
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_934:
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_934
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_934
	nop	dword ptr [rax + rax]
.label_944:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	nop	
	cmp	eax, 3
	je	.label_922
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_928
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_947
.label_922:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_947:
	call	free
.label_928:
	mov	rax, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_929
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_944
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_944
	lea	rdi, [rdi]
	jmp	.label_934
.label_948:
	lea	rdi, [rdi]
	mov	r12, rbx
	jmp	.label_929
.label_933:
	lea	rsi, [rsi]
	mov	r12, rbx
.label_929:
	mov	rax, r12
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_925:
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_926:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_926
	nop	
	mov	r12, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	jne	.label_926
	nop	word ptr [rax + rax]
.label_945:
	lea	rsi, [rsi]
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	nop	
	je	.label_946
	lea	rsi, [rsi]
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_937
	mov	r15, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	jmp	.label_940
.label_946:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_940:
	call	free
.label_937:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	mov	rsp, rsp
	je	.label_938
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_945
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	mov	rbp, rax
	je	.label_945
	nop	
	jmp	.label_926
.label_938:
	mov	r14d, 0x400ff
.label_936:
	mov	rbp, rbx
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_936
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_936
	nop	dword ptr [rax + rax]
.label_939:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rbp, rbp
	and	eax, r14d
	mov	rbp, rbp
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_941
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_927
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rcx, r15
	jmp	.label_927
.label_941:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rcx, rbx
.label_927:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_932
	nop	
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_939
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_939
	nop	
	jmp	.label_936
.label_932:
	mov	rsp, rsp
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_929
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e290

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
	sub	rsp, 0xe8
	nop	
	mov	r12, r9
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	mov	r13, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rbp, rbp
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	mov	rsp, rsp
	ja	.label_966
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [(rdx * 8) + label_1070]
.label_2252:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_4
	nop	
	mov	ecx, OFFSET FLAT:.str.2_2
	nop	
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	mov	r9, r12
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1158
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_951
.label_2253:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	sete	al
	mov	rbp, rbp
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_1177
.label_1158:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_951
	nop	
	jmp	.label_966
.label_2243:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1132
	mov	rax, qword ptr [r9 + 0x70]
.label_1075:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1191
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_976
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_951
.label_1113:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_986
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	peek_token
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_999
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_1089:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp]
	nop	
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1081:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_1033
	mov	rax, qword ptr [r9 + 0x70]
.label_1105:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_978
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_976
	lea	rdi, [rdi]
	jmp	.label_951
.label_999:
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	r9, rbp
	test	rax, rax
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1081
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1089
.label_1033:
	nop	
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	mov	r13, r9
	call	malloc
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_978
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1105
.label_976:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1113
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_951
.label_2244:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	eax, cl
	mov	rbp, rbp
	cdqe	
	lea	rsi, [rsi]
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1120
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1130
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1119:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	movdqu	xmm1, xmmword ptr [rbx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	inc	qword ptr [r9 + 0x98]
	nop	
	or	byte ptr [r9 + 0xb0], 2
	mov	rsp, rsp
	jmp	.label_951
.label_2245:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1162
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_1098:
	mov	qword ptr [rsp], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	nop	
	jle	.label_951
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_951
.label_2246:
	mov	qword ptr [rsp + 0x18], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_958
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rsi, [rsi]
	inc	r13
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	mov	rsp, rsp
	jne	.label_966
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_990
	mov	r15, rbp
.label_958:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_995
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_995:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1006
	mov	rax, qword ptr [r9 + 0x70]
.label_1135:
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	nop	
	je	.label_1017
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_1017:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_951
.label_2247:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_1040
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_1048
.label_2249:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_1051
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_964
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_1060
	lea	rdi, [rdi]
	movdqa	xmm0, xmmword ptr [rip + label_1069]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_1060
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_964:
	mov	eax, dword ptr [r15]
.label_1051:
	cmp	eax, 0x200
	je	.label_1084
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_1181
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_1095
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_992:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	mov	rbp, rbp
	jmp	.label_1101
.label_2251:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_1041
.label_2248:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_1041
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_1129
.label_1040:
	nop	
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], eax
	mov	rbp, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_980
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_1038:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1032:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_951
.label_2254:
	mov	dword ptr [r12], 5
	jmp	.label_1048
.label_2250:
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x90], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	edi, 0x50
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_1176
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1176
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x19
	nop	
	je	.label_1141
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_1010
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_1195
.label_1177:
	mov	r9, rbx
	nop	
	jmp	.label_951
.label_1129:
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, r13
	mov	rbp, rbp
	mov	r9, r12
	lea	rsi, [rsi]
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	parse_expression
.label_1191:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_951
.label_1141:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_993
	or	byte ptr [r13 + 1], 4
.label_993:
	cdqe	
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	add	qword ptr [rsi + 0x48], rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 2
	lea	rsi, [rsi]
	je	.label_1010
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_1195:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_1020
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_1020:
	lea	rcx, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x20], 3
	lea	rdi, [rsp + 0x20]
	mov	r9d, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, rbx
	call	parse_bracket_element
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1042
	mov	rbp, rbp
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1046
.label_1183:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_1056
	nop	
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	lea	rax, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, qword ptr [rsp]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1046
	lea	rdi, [rdi]
	jmp	.label_1042
.label_2275:
	nop	
	mov	cl, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1186
.label_2276:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_1099
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_971:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_953
.label_1153:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_1112
.label_1126:
	nop	
	xor	eax, eax
.label_1112:
	cmp	ebx, 3
	je	.label_1116
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_1118
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_1144
.label_1116:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_1144
.label_1118:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1144:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_1169
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_1128
.label_1169:
	test	r12, r12
	movzx	edx, al
	je	.label_1131
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_1131
.label_1128:
	mov	edx, dword ptr [rsp + 0x28]
.label_1131:
	cmp	ebx, 3
	je	.label_996
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1019
.label_996:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1001
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_1001
.label_1019:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_1001:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1090
	cmp	ebp, -1
	je	.label_1090
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1148
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_1090
.label_1148:
	test	r12, r12
	je	.label_1156
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_1159
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_1009:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_994
.label_1156:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_994:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_1196:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_1012
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_1012
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x3a
	mov	rsp, rsp
	add	rdi, rcx
	mov	rbp, rbp
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1012:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_1196
	mov	dword ptr [r12], 0
	jmp	.label_953
.label_1099:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_962
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_971
.label_1159:
	mov	dword ptr [rsp + 0xdc], edx
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	lea	rbx, [rax*4 + 4]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	nop	
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_1003
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1003
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0xdc]
	jmp	.label_1009
.label_1046:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0x20]
	nop	
	cmp	r15d, 2
	je	.label_1031
	cmp	r15d, 4
	jne	.label_1035
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	mov	rdx, r15
	lea	rcx, [rsp + 0x90]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	build_charclass
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_953
	nop	
	jmp	.label_1057
.label_1035:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_1059
	cmp	eax, 2
	jne	.label_1063
	mov	rbp, rbp
	jmp	.label_1067
.label_1059:
	mov	r13, r9
	nop	
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	nop	
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	ecx, 0x15
	je	.label_1078
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_1083
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	mov	dword ptr [rsp + 0xa0], 3
	mov	r9d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1106
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	peek_token_bracket
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0xb4], 1
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jg	.label_1115
	xor	r12d, r12d
.label_1115:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_1090
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_1090
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_1058
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_1090
.label_1058:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1138
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_1090
.label_1138:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_1153
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_1126
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_1112
.label_1078:
	nop	
	mov	eax, ebx
	neg	eax
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1063:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_1163
	jmp	qword ptr [(rax * 8) + label_1171]
.label_1031:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1022
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1186:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_953:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_1183
	mov	rbp, rbp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0xe0]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1189
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1189:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_959
	mov	rcx, qword ptr [r9 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	and	qword ptr [r13], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	and	qword ptr [r13 + 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_959:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_987
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_987
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_987
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_987
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_998
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_987
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_987
.label_998:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1025
	mov	rax, qword ptr [r9 + 0x70]
.label_1170:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1032
.label_987:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1049
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_979:
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	nop	
	jne	.label_1021
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1021
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1021
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1085
.label_1021:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_1134
	mov	rbp, qword ptr [r9 + 0x70]
.label_975:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	mov	rbp, rbp
	shl	rbx, 6
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	nop	
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rbx + 0x40], -1
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_961
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1016:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rbp
	jmp	.label_951
.label_1084:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1142
	mov	rax, qword ptr [r9 + 0x70]
.label_1072:
	lea	ecx, [rbp + 1]
	nop	
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	mov	rbp, rbp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	ecx, 0xa
.label_1101:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_1173
	mov	rax, qword ptr [r9 + 0x70]
.label_1149:
	lea	ecx, [rbx + 1]
	nop	
	mov	dword ptr [r15], ecx
	nop	
	movsxd	rcx, ebx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1146:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1193
	mov	rax, qword ptr [r9 + 0x70]
.label_1166:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r15], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	nop	
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_950
	mov	qword ptr [rbp], r15
.label_950:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_978
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_981
	jmp	.label_978
.label_1181:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1091
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1086:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rsi, [rsi]
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	nop	
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
.label_981:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_966
.label_980:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_978
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1038
.label_1042:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1037
.label_1010:
	mov	dword ptr [r12], 2
	jmp	.label_1054
.label_1056:
	mov	dword ptr [r12], 7
.label_1057:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_1061
.label_986:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_951
.label_1132:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_978
	nop	
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1075
.label_1120:
	mov	dword ptr [r12], 6
	jmp	.label_1048
.label_1162:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_978
	lea	rsi, [rsi]
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	nop	
	jmp	.label_1098
.label_1176:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_978
.label_1130:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_978
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1119
.label_1006:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_978
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r15
	jmp	.label_1135
.label_1173:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1146
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1149
.label_1193:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_978
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1166
.label_1022:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1037
.label_1060:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_957:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_956:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1180
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1180:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_1187
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_1147
.label_1187:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1147:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_956
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_957
	jmp	.label_964
.label_1049:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_962
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_979
.label_1134:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_962
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_975
.label_961:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_1016
.label_1067:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_1037
.label_1095:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1045
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_992
.label_1142:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1068
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1072
.label_1091:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_978
	mov	r13, r15
	mov	r9, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1086
.label_978:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_1048
.label_1083:
	mov	dword ptr [r12], 7
	jmp	.label_1102
.label_1085:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_951
.label_990:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1110
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_1104:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1104
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_1104
.label_1139:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1123
	nop	
	cmp	eax, 6
	jne	.label_1125
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1036
.label_1123:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1036:
	nop	
	call	free
.label_1125:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_1110
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1139
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1139
	jmp	.label_1104
.label_1110:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_1048
.label_1045:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1101
.label_1068:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_1101
.label_1106:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_1102
.label_1025:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_962
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1170
.label_962:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1054:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1061
.label_1003:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_1090:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_1102:
	mov	rsp, rsp
	mov	r9, r13
.label_1037:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_1061:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
.label_2255:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ebp, 0
	jne	.label_966
.label_951:
	mov	qword ptr [rsp + 0x18], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, r14
	mov	rbp, rbp
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	nop	
	mov	eax, r14d
	nop	
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0xd0], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x50], r14
	nop	dword ptr [rax]
.label_1127:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_997
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1002
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_1013
	mov	r14, rbp
	lea	rsi, [rsi]
	cmp	eax, 0x12
	nop	
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	lea	rsi, [rsi]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	cmove	rcx, rax
	jmp	.label_1023
.label_1096:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_1013:
	mov	rsp, rsp
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	nop	
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1050
	nop	
	cmp	eax, 2
	je	.label_1053
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1065
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_1013
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_1013
	cmp	r15, -2
	je	.label_1013
	cmp	ecx, 0x39
	nop	
	ja	.label_1013
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_1096
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_1013
.label_1065:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_1050:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_1137
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1080
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_1077
.label_1080:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_1087
	nop	word ptr cs:[rax + rax]
.label_1137:
	cmp	r15, -2
	je	.label_1053
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_1097
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_1053
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1053
.label_1077:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_1052
.label_1097:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_1109
.label_1076:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_1052:
	mov	r12, rdx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 0x18
	lea	rsi, [rsi]
	je	.label_1124
	cmp	eax, 2
	je	.label_1133
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_1124
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1052
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1052
	cmp	r12, -2
	je	.label_1052
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_1052
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_1076
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_1052
.label_1124:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_1133
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_1109
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_1157
.label_1109:
	cmp	eax, 0x18
	nop	
	jne	.label_1157
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_1164
	nop	dword ptr [rax]
.label_1023:
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	mov	rsp, rsp
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r14
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1028
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r9
	mov	rax, r9
	lea	rsi, [rsi]
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rax, rdi
	lea	rsi, [rsi]
	je	.label_972
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_982
.label_1029:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_952
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_965:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_965
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_965
	nop	
.label_1082:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_977
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_977
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_977:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_952
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_1082
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_1082
	jmp	.label_965
	nop	dword ptr [rax + rax]
.label_952:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_960
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_1165:
	lea	rdi, [rdi]
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	nop	
	mov	dword ptr [r8 + 0x80], esi
	mov	rbp, rbp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	r12, r12
	je	.label_1018
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_1018:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_1039
	nop	
	jmp	.label_1043
	nop	word ptr cs:[rax + rax]
.label_972:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_972
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_972
	nop	
.label_968:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_1026
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1064
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	jmp	.label_1079
	nop	dword ptr [rax]
.label_1026:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1079:
	mov	rsp, rsp
	call	free
.label_1064:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1028
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_968
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_968
	jmp	.label_972
.label_1167:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1107
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r8 + 0x80], 0
	nop	
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1088
.label_1152:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_1160
.label_1071:
	mov	edi, 0x3c8
	mov	rsp, rsp
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r8, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_963
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1178
.label_1107:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1185
.label_985:
	mov	qword ptr [r14], 0
.label_1185:
	xor	r12d, r12d
.label_1160:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	mov	r8, r15
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_963
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1151
	nop	word ptr cs:[rax + rax]
.label_1043:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1167
	mov	rax, qword ptr [r8 + 0x70]
.label_1088:
	lea	rdx, [r12 + 0x28]
	nop	
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_1174
	nop	dword ptr [rax + rax]
.label_1015:
	lea	rdx, [r12 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	nop	
	lea	rcx, [rax + rsi + 8]
	nop	
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_1174:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_973
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_984
	nop	word ptr [rax + rax]
.label_973:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1194:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_1168
	test	r12, r12
	jne	.label_1136
.label_1168:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1194
	nop	
	jmp	.label_1004
.label_1136:
	lea	r14, [rbp + 0x10]
.label_984:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_1122
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1015
.label_1122:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_985
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1015
	nop	word ptr cs:[rax + rax]
.label_1004:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1152
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_1151:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_963
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1071
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1178:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	r13, [rax + rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	nop	
	lea	r15, [r15 + 1]
	lea	rdi, [rdi]
	jl	.label_1043
.label_1039:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_1100
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_1103
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1047:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	rdx, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	nop	
	jmp	.label_1111
.label_1100:
	mov	r12, qword ptr [rsp + 0x98]
.label_1111:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_1114
.label_1157:
	mov	qword ptr [rsp + 0xe0], r14
.label_1087:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1028
.label_982:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_1140
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_1145
.label_960:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	lea	rdi, [rdi]
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r8, rbp
	test	rax, rax
	je	.label_963
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_1165
.label_1133:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1053:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_1175
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_1028
.label_1055:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1190
	mov	rbp, rbp
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1192
.label_1184:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_1007
.label_1190:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_967
.label_1108:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_967:
	nop	
	xor	r13d, r13d
.label_1007:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_963
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_989
	nop	
.label_1145:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1055
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1192:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	r12, [rsp + 0x70]
	jmp	.label_1014
	nop	word ptr cs:[rax + rax]
.label_1073:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rsi, [rsi]
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1014:
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rsi, [rsi]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1062
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1074
	nop	dword ptr [rax]
.label_1062:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1093:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1005
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_1179
.label_1005:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1093
	jmp	.label_969
.label_1179:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_1074:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1000
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1073
.label_1000:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1108
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1073
	nop	word ptr cs:[rax + rax]
.label_969:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1184
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_989:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_988
	mov	qword ptr [rdi], rdx
.label_988:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_963
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_1145
.label_1140:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_1161
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_1028
.label_1103:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1028
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1047
.label_1161:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1182
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1094:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	rdi, [rdi]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rbp, [rsp + 0x70]
	jmp	.label_1011
	nop	word ptr cs:[rax + rax]
.label_970:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rbp, rbp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	rbp, rbp
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
.label_1011:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1008
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1044
.label_1008:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1030:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1024
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1027
.label_1024:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_1030
	jmp	.label_1034
.label_1027:
	lea	rbp, [rbx + 0x10]
.label_1044:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1188
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_970
.label_1188:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_955
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_970
.label_1175:
	mov	qword ptr [rsp + 0xe0], rbp
	cmp	eax, 2
	setne	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1028
.label_1034:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_1029
.label_1164:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_1028
.label_1182:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1092
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	r8, r12
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	nop	
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	rsp, rsp
	mov	r9, r14
	lea	rdi, [rdi]
	jmp	.label_1094
.label_1092:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_963
.label_955:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_963:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1028:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_1114
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_1117
	lea	rsi, [rsi]
	jmp	.label_1121
	nop	word ptr cs:[rax + rax]
.label_1114:
	mov	rbx, qword ptr [rsp]
.label_1117:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_1127
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_1154
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_1127
.label_1154:
	mov	rbp, rbp
	test	al, al
	jne	.label_1041
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_1143:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_1143
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1143
	nop	
.label_1066:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1150
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_1155
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	nop	
	mov	rdi, rbx
	jmp	.label_1172
	nop	dword ptr [rax + rax]
.label_1150:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1172:
	lea	rsi, [rsi]
	call	free
.label_1155:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1041
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1066
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1066
	jmp	.label_1143
.label_1121:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_966
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_991:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_991
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_991
	nop	dword ptr [rax]
.label_983:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_949
	cmp	eax, 6
	jne	.label_954
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	jmp	.label_974
	nop	
.label_949:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_974:
	lea	rsi, [rsi]
	call	free
.label_954:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_966
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_983
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_983
	mov	rsp, rsp
	jmp	.label_991
.label_1041:
	mov	dword ptr [r12], 0xd
.label_1048:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_966
.label_997:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_966
.label_1002:
	mov	r15, rbp
.label_966:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1163:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4114f0

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
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1207
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1213
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0x14]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0x20], al
	nop	
	lea	rcx, [rsp + 8]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_1202
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1204
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1211:
	movsx	rcx, al
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	lea	rdi, [rdi]
	shr	rdx, 0x3a
	add	rdx, rcx
	lea	rsi, [rsi]
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1211
.label_1204:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_1198
	movdqu	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1198:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1208
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	and	qword ptr [rbx + 0x18], rax
.label_1208:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1197
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_1212:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	lea	r14, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 2
	lea	rsi, [rsi]
	jl	.label_1201
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_1214
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_1203:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x80]
	nop	
	cmp	eax, 0xf
	je	.label_1206
	mov	rcx, qword ptr [r12 + 0x70]
.label_1209:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	nop	
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	lea	rax, [rcx + rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rsi + 8], 0
	nop	
	mov	qword ptr [rcx + rsi + 0x10], r14
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1200
.label_1201:
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1200
.label_1207:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_1205
.label_1213:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1210
.label_1202:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1205
.label_1197:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1199
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1212
.label_1214:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1199
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_1203
.label_1199:
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
.label_1210:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1205:
	xor	eax, eax
.label_1200:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1206:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_1200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_1209
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411a00

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_1215
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_1221
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1221
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1220
.label_1221:
	test	dl, 1
	mov	rsp, rsp
	je	.label_1218
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_1218
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1218
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_1220
.label_1215:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1218:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_1222
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1223
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_1219
.label_1222:
	cmp	eax, 0x5e
	nop	
	je	.label_1227
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_1217
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1220
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_1220:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_1223:
	mov	rbp, rbp
	xor	eax, eax
.label_1219:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_1226
	cmp	eax, 0x3a
	je	.label_1216
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_1224
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1217:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1216:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_1225
.label_1224:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1227:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_1226:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1225:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b80

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1228
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_1228
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_1238:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1241
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_1238
.label_1241:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_1228
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1246
.label_1228:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1232
	mov	rbp, rbp
	jmp	qword ptr [(rax * 8) + label_1236]
.label_2278:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_1229
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1242
	nop	dword ptr [rax]
.label_1248:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_1242:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_1247
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1249
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1239
	nop	word ptr cs:[rax + rax]
.label_1247:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_1244:
	mov	bl, byte ptr [rbx + rdx]
.label_1239:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1229
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_1243
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1245
.label_1243:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_1248
	jmp	.label_1229
.label_1249:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_1230
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_1234
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1237
.label_1234:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1237
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_1233
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_1233
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_1235:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1233
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_1235
.label_1233:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_1239
.label_1230:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_1244
.label_1237:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1239
.label_1245:
	mov	rsp, rsp
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x1e
	je	.label_1231
	cmp	ecx, 0x1c
	je	.label_1240
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_1229
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_1229
.label_1231:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_1229
.label_1240:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_1229
.label_2277:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_1232
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1229
.label_1232:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1246:
	xor	eax, eax
.label_1229:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411eb0

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
	je	.label_1264
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_1296
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1264
.label_1296:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1264:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1256
.label_1312:
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
	mov	esi, OFFSET FLAT:.str.1_4
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1280
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1287
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1293
	mov	esi, OFFSET FLAT:.str.3_1
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1260
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1302
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1309
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1250
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1261
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1269
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1279
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1258
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
	jne	.label_1252
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1266
.label_1310:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1275
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1275:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_1310
	mov	rsp, rsp
	jmp	.label_1252
.label_1280:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1255
	nop	
.label_1276:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1263
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1263:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_1276
	jmp	.label_1252
	nop	dword ptr [rax]
.label_1255:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1298
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1298:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1255
	jmp	.label_1252
.label_1287:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1273
	nop	word ptr cs:[rax + rax]
.label_1251:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1303
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1303:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1251
	jmp	.label_1252
	nop	
.label_1273:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_1305
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1305:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_1273
	nop	
	jmp	.label_1252
.label_1293:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1254
	nop	dword ptr [rax + rax]
.label_1281:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1289
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	mov	rsp, rsp
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 6
	lea	rdi, [rdi]
	or	qword ptr [r15 + rcx*8], rax
.label_1289:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1281
	mov	rsp, rsp
	jmp	.label_1252
	nop	word ptr cs:[rax + rax]
.label_1254:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_1272
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1272:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1254
	mov	rbp, rbp
	jmp	.label_1252
.label_1260:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1268
	nop	
.label_1285:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1271
	nop	
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1271:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1285
	nop	
	jmp	.label_1252
.label_1268:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1292
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1292:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_1268
	jmp	.label_1252
.label_1256:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1252
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_1312
.label_1302:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_1257
	nop	word ptr cs:[rax + rax]
.label_1283:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_1267
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	sar	rcx, 0x3f
	mov	rbp, rbp
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1267:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1283
	jmp	.label_1252
.label_1257:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1313
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1313:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1257
	jmp	.label_1252
.label_1309:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1277
	nop	dword ptr [rax]
.label_1259:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1284
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1284:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_1259
	mov	rbp, rbp
	jmp	.label_1252
.label_1277:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_1265
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1265:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1277
	mov	rbp, rbp
	jmp	.label_1252
.label_1250:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1278
	nop	dword ptr [rax + rax]
.label_1300:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1282
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1282:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1300
	jmp	.label_1252
.label_1278:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1306
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1306:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1278
	nop	
	jmp	.label_1252
.label_1261:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_1262
	nop	
.label_1274:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1311
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	nop	
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1311:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_1274
	jmp	.label_1252
.label_1262:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
	je	.label_1286
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1286:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1262
	jmp	.label_1252
.label_1269:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_1290
	nop	word ptr cs:[rax + rax]
.label_1304:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_1307
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rbp, rbp
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1307:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1304
	jmp	.label_1252
.label_1290:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_1294
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_1294:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1290
	jmp	.label_1252
.label_1279:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_1253
.label_1295:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_1291
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1291:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1295
	nop	
	jmp	.label_1252
.label_1253:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_1299
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1299:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1253
	jmp	.label_1252
.label_1266:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1308
	mov	cl, byte ptr [r14 + rdx]
	mov	rbp, rbp
	mov	eax, 1
	nop	
	shl	rax, cl
	mov	rsp, rsp
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1308:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1266
	mov	rsp, rsp
	jmp	.label_1252
.label_1258:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1301
.label_1288:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_1270
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1270:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1288
.label_1252:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1301:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1297
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1297:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_1301
	jmp	.label_1252
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4128f0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 0x11
	mov	rbp, rbp
	je	.label_1314
	cmp	eax, 4
	jne	.label_1315
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1315
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa0], rax
	nop	
	xor	eax, eax
	ret	
.label_1314:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1315
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1315
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1316
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rsi
.label_1316:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	nop	
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	rcx, 0x3f
	mov	rbp, rbp
	jg	.label_1315
	mov	rsp, rsp
	mov	rax, -2
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_1315:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4129c0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 0x30]
	mov	rbp, rbp
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1317
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [(rbx * 8) + label_1327]
.label_2282:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_1325]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1326
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_1323
.label_2283:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	nop	
	js	.label_1321
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_1322
	lea	rdi, [rdi]
	mov	r12, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	rbx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	qword ptr [r12 + rbx*8], 2
	mov	rsp, rsp
	mov	edi, 0x10
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1319
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_1320
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_1323
.label_2280:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_1319
	nop	
	mov	edi, OFFSET FLAT:.str.17_1
	nop	
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2281:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1323
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_1325]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1329
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_1323
.label_1317:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_1324
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_1323
.label_1320:
	mov	qword ptr [rax], 2
	jge	.label_1328
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_1323
.label_1328:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1323:
	xor	eax, eax
.label_1319:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_1326:
	lea	rax, [r14 + rbx*8]
.label_1318:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1319
.label_1329:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_1318
.label_1321:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1322:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1324:
	mov	edi, OFFSET FLAT:.str.20
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c70

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
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rdi
	nop	
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	r13, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	je	.label_1339
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	lea	rdi, [rdi]
	je	.label_1339
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_1333
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1333
.label_1339:
	mov	r12d, dword ptr [rbx + 0x80]
	nop	
	cmp	r12d, 0xf
	mov	rsp, rsp
	je	.label_1335
	mov	rax, qword ptr [rbx + 0x70]
.label_1342:
	lea	rdi, [rdi]
	lea	ecx, [r12 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r12d
	mov	rbp, rbp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1337:
	mov	qword ptr [rsp], rbp
	mov	rbp, rbp
	mov	r15d, dword ptr [rbx + 0x80]
	mov	rbp, rbp
	cmp	r15d, 0xf
	je	.label_1330
	mov	rax, qword ptr [rbx + 0x70]
.label_1340:
	lea	rsi, [rsi]
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 9
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1336:
	test	r13, r13
	lea	rsi, [rsi]
	mov	rbp, r15
	nop	
	je	.label_1332
	mov	rbp, rbp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_1344
	mov	rax, qword ptr [rbx + 0x70]
.label_1341:
	nop	
	lea	ecx, [rbp + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r13], rbp
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1332
	mov	qword ptr [r15], rbp
.label_1332:
	nop	
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1343
	mov	rax, qword ptr [rbx + 0x70]
.label_1338:
	lea	rdi, [rdi]
	lea	ecx, [r13 + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	nop	
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	r12, r12
	je	.label_1345
	lea	rsi, [rsi]
	mov	qword ptr [r12], r13
.label_1345:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1334
	nop	
	mov	qword ptr [rbp], r13
.label_1334:
	test	r15, r15
	je	.label_1331
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1331
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_1331
	test	r13, r13
	je	.label_1331
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	lea	rdi, [rdi]
	mov	eax, 0x80000
	mov	rbp, rbp
	and	eax, dword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	mov	ecx, 0xfff7ffff
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	mov	rbp, rbp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x30], ecx
.label_1333:
	mov	rax, r13
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1335:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rax, rax
	nop	
	je	.label_1337
	mov	rcx, qword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	nop	
	jmp	.label_1342
.label_1330:
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	xor	r15d, r15d
	test	rax, rax
	je	.label_1336
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1340
.label_1343:
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1334
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	mov	rbp, rbp
	jmp	.label_1338
.label_1331:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_1333
.label_1344:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_1332
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1341
	nop	
	.section	.text
	.align	32
	#Procedure 0x413050

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
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_1350
.label_1351:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1349
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1347
.label_1349:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1347:
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
	mov	r15, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r15 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1348:
	mov	rax, r15
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
.label_1350:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1348
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1348
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [r13 + r13*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1346
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_1346
	test	r13, r13
	mov	rbp, rbp
	je	.label_1346
	nop	
	test	rbp, rbp
	je	.label_1346
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	nop	
	mov	qword ptr [rbx + 0x28], r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jmp	.label_1351
.label_1346:
	lea	rsi, [rsi]
	mov	rbx, rax
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1348
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4132e0

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
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rdi]
	lea	rdi, [rax*8 + 8]
	mov	rbp, rbp
	call	malloc
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1352
	mov	qword ptr [rsp + 0x28], rbx
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	rsp, rsp
	mov	r8d, eax
	mov	rbp, rbp
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1354
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_1354
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1354
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1352
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_1354:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_1358
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_1361
.label_1358:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_1353
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1357:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	lea	r12, [rdx + rdx*2]
	nop	
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1362
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1359
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1363
	jmp	.label_1352
.label_1359:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1363:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1352
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1356
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1362:
	mov	r15b, 1
.label_1356:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_1357
	jmp	.label_1361
.label_1353:
	mov	rbp, rbp
	xor	r15d, r15d
.label_1361:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1352
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_1355
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_1355
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1360
.label_1355:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1360:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_1352:
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413590

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
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	nop	
	mov	r14, rdi
.label_1372:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1374:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1379
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	rsp, rsp
	mov	qword ptr [rdx + r12*8 + 8], 0
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	rdi, r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	re_dfa_add_node
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_1376
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax + rcx + 8], edx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x24]
	jne	.label_1374
	jmp	.label_1364
	nop	dword ptr [rax]
.label_1379:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1365
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_1369
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_1370
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_1370
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_1373:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_1366
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_1368
.label_1366:
	dec	rsi
	test	rsi, rsi
	jle	.label_1370
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1373
	mov	rbp, rbp
	jmp	.label_1370
.label_1368:
	cmp	rsi, -1
	je	.label_1370
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1380
	mov	rbp, rbp
	jmp	.label_1364
	nop	word ptr [rax + rax]
.label_1370:
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1371
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rax, qword ptr [r14]
	nop	
	mov	rcx, rbx
	nop	
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	mov	rsp, rsp
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x3ff00
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	nop	
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1364
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x1c], eax
	nop	
	test	eax, eax
	nop	
	jne	.label_1364
.label_1380:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1367
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	nop	
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	lea	rsi, [rsi]
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1374
	mov	rsp, rsp
	jmp	.label_1364
.label_1369:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1375
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_1377
.label_1375:
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], 0xc
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1364
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	nop	
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	rsp, rsp
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	rbp, rbp
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	nop	
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	lea	rdi, [rcx + r15*8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1372
	jmp	.label_1364
.label_1376:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1364
.label_1371:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1364
.label_1367:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_1364
.label_1365:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1378:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_1364:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1377:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1364
	nop	
	jmp	.label_1378
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413b60

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1388
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1388
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_1385
	add	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_1382
	nop	
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
.label_1385:
	test	rcx, rcx
	je	.label_1391
	nop	
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	dec	rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	or	rdx, rcx
	nop	
	js	.label_1394
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_1387
.label_1381:
	dec	rax
.label_1386:
	dec	rcx
	jmp	.label_1384
	nop	word ptr cs:[rax + rax]
.label_1387:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1381
	jge	.label_1386
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_1384:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1387
.label_1394:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_1389
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	mov	rbp, rbp
	lea	rdi, [rbx*8]
	lea	rdi, [rdi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1389:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_1388
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1393:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_1383:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_1390
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1383
	nop	
	jmp	.label_1388
	nop	word ptr cs:[rax + rax]
.label_1390:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_1393
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_1392
.label_1391:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_1392:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_1388:
	xor	eax, eax
.label_1382:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413d80

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1395
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1402
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_1405
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1398
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1400
.label_1395:
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rip + label_1325]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1408
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_1399
.label_1402:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_1401
.label_1405:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_1400:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_1406
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1403
	nop	word ptr [rax + rax]
.label_1396:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_1396
	lea	rdi, [rdi]
	jmp	.label_1403
.label_1406:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_1404
	nop	dword ptr [rax + rax]
.label_1397:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1404:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_1397
.label_1403:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1401:
	inc	qword ptr [r14 + 8]
.label_1399:
	lea	rdi, [rdi]
	mov	al, 1
.label_1407:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_1408:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1407
.label_1398:
	xor	eax, eax
	jmp	.label_1407
	nop	
	.section	.text
	.align	32
	#Procedure 0x413ec0

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
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	mov	rsp, rsp
	test	r8, r8
	lea	rdi, [rdi]
	je	.label_1434
	nop	
	mov	qword ptr [rsp], rdi
	mov	r14d, r13d
	add	r14, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_1436
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_1415
	lea	rsi, [rsi]
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	nop	
	je	.label_1422
	nop	
	movq	xmm0, r14
	nop	
	lea	r9, [r8 - 4]
	lea	rsi, [rsi]
	mov	eax, r9d
	shr	eax, 2
	nop	
	inc	eax
	xor	edi, edi
	test	al, 3
	mov	rsp, rsp
	je	.label_1428
	mov	rsp, rsp
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1426:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	lea	rsi, [rsi]
	add	rdi, 4
	inc	rbp
	jne	.label_1426
	jmp	.label_1416
.label_1434:
	mov	dword ptr [rdi], 0
	jmp	.label_1417
.label_1422:
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_1415
.label_1428:
	pxor	xmm1, xmm1
.label_1416:
	mov	rsp, rsp
	cmp	r9, 0xc
	jb	.label_1431
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rsi, [rsi]
	sub	rax, rdi
	mov	rsp, rsp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1441:
	nop	
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	mov	rsp, rsp
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	mov	rsp, rsp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_1441
.label_1431:
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	paddq	xmm0, xmm1
	mov	rbp, rbp
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_1436
.label_1415:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	
.label_1424:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_1424
.label_1436:
	mov	rax, qword ptr [rsi + 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	lea	rsi, [rsi]
	jle	.label_1409
	lea	rsi, [rsi]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1430:
	nop	
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	lea	rdi, [rdi]
	jne	.label_1410
	movzx	eax, byte ptr [r15 + 0x68]
	nop	
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	lea	rsi, [rsi]
	jne	.label_1410
	test	rdx, rdx
	je	.label_1410
	mov	rdi, qword ptr [r15 + 0x50]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1410
	nop	
	cmp	qword ptr [rdi + 8], r8
	mov	rsp, rsp
	jne	.label_1410
	lea	rsi, [rsi]
	mov	rax, r8
.label_1414:
	test	rax, rax
	jle	.label_1412
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_1414
	nop	dword ptr [rax + rax]
.label_1410:
	nop	
	inc	rbx
	nop	
	cmp	rbx, r10
	lea	rdi, [rdi]
	jl	.label_1430
.label_1409:
	mov	rsp, rsp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_1419
	nop	
	mov	r10, r15
	add	r10, 8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r10
	mov	r9, rbx
	nop	
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_1445
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	mov	rbp, r15
	lea	rsi, [rsi]
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1435
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	rbp, rbp
	mov	r15, rbp
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_1444
.label_1445:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, r12
.label_1444:
	mov	rsp, rsp
	mov	al, byte ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	lea	rdi, [rdi]
	or	al, cl
	mov	rsp, rsp
	mov	byte ptr [r15 + 0x68], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1423
	mov	rsp, rsp
	mov	ebp, r13d
	lea	rdi, [rdi]
	and	ebp, 1
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	and	r13d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], r13d
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	r8d, r8d
	nop	
.label_1442:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	nop	
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	lea	rsi, [rsi]
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_1420
	mov	rbp, rbp
	test	ecx, ecx
	nop	
	je	.label_1433
.label_1420:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	mov	rbp, rbp
	shr	al, 5
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	or	eax, esi
	lea	rsi, [rsi]
	shl	al, 5
	nop	
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_1438
	mov	rbp, rbp
	cmp	edx, 2
	lea	rsi, [rsi]
	jne	.label_1446
	or	bl, 0x10
	mov	rbp, rbp
	jmp	.label_1429
.label_1438:
	lea	rdi, [rdi]
	or	bl, 0x40
.label_1429:
	lea	rsi, [rsi]
	mov	byte ptr [r15 + 0x68], bl
.label_1446:
	nop	
	test	ecx, ecx
	je	.label_1433
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_1411
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	edi, 0x18
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1437
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_1440
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rbp, rbp
	mov	rdi, r15
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1413
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_1432
.label_1440:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_1432:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x18]
.label_1411:
	test	ebp, ebp
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jne	.label_1443
	mov	rsp, rsp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	jne	.label_1418
.label_1443:
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	je	.label_1439
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	nop	
	jne	.label_1418
.label_1439:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x34], 0
	nop	
	jne	.label_1427
	mov	rbp, rbp
	mov	eax, r13d
	and	eax, 0x10
	mov	rsp, rsp
	jne	.label_1418
.label_1427:
	nop	
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1433
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_1433
	nop	word ptr cs:[rax + rax]
.label_1418:
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, r8
	js	.label_1421
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_1421
	dec	rcx
	nop	
	mov	qword ptr [r15 + 0x10], rcx
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jle	.label_1421
	lea	rax, [r12*8]
	mov	rsp, rsp
	add	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rcx, r8
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1425:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_1425
	nop	word ptr cs:[rax + rax]
.label_1421:
	lea	rdi, [rdi]
	inc	r8
.label_1433:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	nop	
	jl	.label_1442
.label_1423:
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	register_state
	test	eax, eax
	je	.label_1412
.label_1437:
	mov	rdi, r15
	call	free_state
	mov	rbp, rbp
	jmp	.label_1419
.label_1413:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_1419
.label_1435:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_1419:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_1417:
	xor	r15d, r15d
.label_1412:
	mov	rsp, rsp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414570

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
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	rsp, rsp
	mov	ecx, 0xc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1449
	mov	rbp, rbp
	test	r13, r13
	jle	.label_1452
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1450:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1454
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_1447
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1451
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_1447:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1454:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1450
.label_1452:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_1453
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1448:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1449
.label_1451:
	nop	
	mov	ecx, 0xc
.label_1449:
	mov	eax, ecx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1453:
	mov	rbp, rbp
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	ecx, 0xc
	mov	rsp, rsp
	je	.label_1449
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_1448
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414730

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
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rbp, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_1470
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1491
	mov	qword ptr [rbx + 0x20], 0
.label_1491:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r13
	jne	.label_1465
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r13
.label_1465:
	mov	rbp, rbp
	test	r14, r14
	je	.label_1486
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_1520
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1458
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1471
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
.label_1471:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_1483
.label_1513:
	nop	
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1473:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1486
	lea	rsi, [rsi]
	add	qword ptr [rbx + 8], r14
.label_1486:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1493
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1505
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1510
	jmp	.label_1455
.label_1493:
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_1515
	mov	qword ptr [rbx + 0x30], rdx
	lea	rdi, [rdi]
	jmp	.label_1455
.label_1505:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1455:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1510:
	mov	rbp, rbp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1470:
	mov	r14, r13
	lea	rsi, [rsi]
	sub	r14, rax
	lea	rdi, [rdi]
	jmp	.label_1465
.label_1520:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	mov	rbp, rbp
	test	cl, cl
	jne	.label_1468
.label_1500:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	lea	rdi, [rdi]
	jl	.label_1478
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [rbx + 0x89], 0
	mov	rsp, rsp
	je	.label_1484
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	nop	
	mov	rdx, r14
	sub	rdx, rsi
	mov	rbp, rbp
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	mov	rsp, rsp
	lea	rsi, [rdi + rsi - 1]
	nop	word ptr cs:[rax + rax]
.label_1508:
	mov	rbp, rsi
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_1484
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	mov	rbp, rbp
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_1508
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_1516
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	r12, r10
	nop	
	mov	rsi, rbp
.label_1481:
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1509
	mov	rbp, rbp
	cmp	rax, -3
	lea	rdi, [rdi]
	mov	r10, r12
	ja	.label_1474
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_1474
.label_1458:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsp, rsp
	xor	ecx, ecx
.label_1506:
	lea	rsi, [rsi]
	lea	rsi, [rcx + rdx]
	mov	rsp, rsp
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	nop	
	sar	rax, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1490
	mov	rbp, rbp
	jge	.label_1502
	nop	
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	rdi, rdx
.label_1490:
	cmp	rcx, rdi
	mov	rbp, rbp
	mov	rdx, rdi
	jl	.label_1506
.label_1502:
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_1460
	lea	rdi, [rdi]
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_1460
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + r14*8], r14
	mov	rbp, rbp
	jne	.label_1460
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	mov	rsp, rsp
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	mov	rsp, rsp
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	lea	rsi, [rsi]
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	jle	.label_1473
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1494:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx*8], rsi
	mov	rbp, rbp
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_1494
	jmp	.label_1473
.label_1483:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_1513
.label_1460:
	mov	rax, r14
	sub	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1461:
	mov	rax, r12
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1456
	nop	
	lea	r12, [rax - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbp + rax*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_1461
.label_1456:
	cmp	rax, rsi
	mov	rsp, rsp
	jge	.label_1466
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
.label_1475:
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1466
	mov	rbp, rbp
	inc	rax
	cmp	rax, rsi
	jl	.label_1475
.label_1466:
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	jne	.label_1479
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_1498
.label_1515:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1485
	mov	rsp, rsp
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	mov	rbp, rbp
	jge	.label_1489
	lea	rdi, [rdi]
	jmp	.label_1497
	nop	dword ptr [rax]
.label_1521:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_1497:
	lea	rdi, [rdi]
	inc	r15
	lea	rdi, [rdi]
	mov	r12, rbp
	mov	rsp, rsp
	add	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1501
.label_1464:
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rbp, rbp
	cmp	eax, 0x17f
	mov	rsp, rsp
	ja	.label_1518
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1518:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	byte ptr [rax + r15 - 1], bpl
	lea	rsi, [rsi]
	cmp	r15, r14
	nop	
	jl	.label_1521
	lea	rdi, [rdi]
	jmp	.label_1462
.label_1501:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx]
	mov	rbp, rbp
	jmp	.label_1464
.label_1478:
	add	rax, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1467
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_1467:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1480
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0xa
	nop	
	jne	.label_1480
	lea	rdi, [rdi]
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	lea	rsi, [rsi]
	add	eax, eax
.label_1480:
	mov	dword ptr [rbx + 0x70], eax
	mov	rbp, rbp
	jmp	.label_1473
.label_1479:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	lea	rsi, [rsi]
	je	.label_1498
	test	rbp, rbp
	lea	rdi, [rdi]
	jle	.label_1504
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	mov	rsp, rsp
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	lea	rsi, [rsi]
	call	memset
.label_1504:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_1498:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1473
.label_1485:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1455
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	cmovg	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_1463
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx]
	mov	rsp, rsp
	jmp	.label_1472
.label_1487:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_1472:
	mov	rbp, rbp
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_1487
	mov	rax, rcx
.label_1463:
	mov	qword ptr [rbx + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1455
.label_1462:
	nop	
	mov	r15, r14
.label_1489:
	mov	qword ptr [rbx + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1455
.label_1468:
	nop	
	mov	rdx, r14
	sub	rdx, r13
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1500
.label_1509:
	mov	rbp, rbp
	mov	r10, r12
.label_1474:
	lea	rdi, [rdi]
	cmp	esi, -1
	jne	.label_1517
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 0x38]
.label_1484:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	jge	.label_1512
	mov	qword ptr [rsp + 0x10], r10
	lea	rax, [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1459
.label_1496:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	cmp	rbp, r12
	lea	rsi, [rsi]
	je	.label_1503
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	je	.label_1476
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	nop	
	jmp	.label_1476
.label_1503:
	mov	rcx, qword ptr [rsp + 8]
.label_1476:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1482
	nop	
.label_1459:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	add	rsi, r12
	mov	rbp, rbp
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1496
	mov	rcx, rax
	or	rcx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	nop	
	je	.label_1496
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp]
.label_1482:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	nop	
	jl	.label_1459
	mov	qword ptr [rbx + 0x30], rbp
	nop	
	cmp	esi, -1
	mov	r10, qword ptr [rsp + 0x10]
	je	.label_1495
.label_1517:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1519
.label_1507:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	jne	.label_1499
	mov	ecx, 2
	nop	
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1499
	nop	
	xor	ecx, ecx
.label_1499:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1457
.label_1512:
	mov	qword ptr [rbx + 0x30], rbp
.label_1495:
	dec	r10
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r10
	mov	rbp, rbp
	mov	edx, r15d
	nop	
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1457:
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_1469
.label_1488:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1473
.label_1469:
	lea	rdi, [rdi]
	jle	.label_1511
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1511:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rsp, rsp
	je	.label_1488
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	jmp	.label_1488
.label_1519:
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	cmp	esi, 0x5f
	mov	rbp, rbp
	mov	ecx, 1
	je	.label_1499
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1507
	jmp	.label_1499
.label_1516:
	lea	rsi, [rsp + 0x2e]
	cmp	rdx, 6
	mov	ecx, 6
	mov	rsp, rsp
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1514
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rbp, rbp
	cmp	rdi, -8
	lea	rdi, [rdi]
	mov	rcx, -7
	mov	rsp, rsp
	cmovg	rcx, rdi
	nop	
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	mov	rsp, rsp
	inc	rcx
.label_1492:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	rsp, rsp
	mov	byte ptr [rsp + rcx + 0x2c], al
	dec	rcx
	mov	rsp, rsp
	cmp	rcx, 1
	nop	
	jg	.label_1492
	nop	
	jmp	.label_1477
.label_1514:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r11
.label_1477:
	mov	r12, r10
	nop	
	jmp	.label_1481
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415160

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	mov	rbp, rbp
	test	r10, r10
	jle	.label_1522
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x98]
	mov	rbp, rbp
	mov	r11, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	lea	rdi, [rdi]
	mov	r8d, eax
	and	r8d, 2
	mov	rsp, rsp
	and	eax, 8
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1526:
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rbp, rbp
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_1524
	shr	edx, 8
	mov	rsp, rsp
	test	dx, 0x3ff
	je	.label_1522
	test	r9d, r9d
	nop	
	jne	.label_1527
	mov	rsp, rsp
	mov	esi, edx
	and	esi, 4
	jne	.label_1524
.label_1527:
	lea	rdi, [rdi]
	test	r9d, r9d
	lea	rsi, [rsi]
	je	.label_1525
	mov	esi, edx
	mov	rbp, rbp
	and	esi, 8
	mov	rbp, rbp
	jne	.label_1524
.label_1525:
	test	r8d, r8d
	lea	rsi, [rsi]
	jne	.label_1523
	lea	rdi, [rdi]
	mov	esi, edx
	and	esi, 0x20
	mov	rbp, rbp
	jne	.label_1524
.label_1523:
	test	eax, eax
	jne	.label_1522
	nop	
	test	dl, dl
	jns	.label_1522
.label_1524:
	lea	rsi, [rsi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	ecx, 0
	mov	rsp, rsp
	jl	.label_1526
.label_1522:
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415270

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
	jle	.label_1530
	nop	
	xor	r12d, r12d
	nop	
.label_1531:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1528
	nop	word ptr cs:[rax + rax]
.label_1532:
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
	jl	.label_1532
.label_1528:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1529
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1529:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1531
.label_1530:
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
	#Procedure 0x415380

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
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	nop	
	mov	qword ptr [rbp - 0x88], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x58], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x30], r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rax, qword ptr [rip + label_1571]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + label_1572]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	lea	rdi, [rdi]
	je	.label_1573
	mov	qword ptr [rbp - 0x78], rcx
	mov	r15, r14
	mov	edi, 0x60
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	r14d, 0xc
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_1535
	nop	
	lea	r13, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
.label_1573:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xb8], r13
	mov	r15, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	cmp	rdx, 0xfbf
	lea	rdi, [rdi]
	ja	.label_1548
	mov	rax, rsp
	mov	rsp, rsp
	lea	rcx, [rdx + 0xf]
	nop	
	and	rcx, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rsp, rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	jmp	.label_1566
.label_1548:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	call	malloc
	test	rax, rax
	je	.label_1578
	mov	cl, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
.label_1566:
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbx + 8]
	nop	
	jg	.label_1591
	lea	rax, [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1560
.label_1578:
	mov	r14d, 0xc
	test	r13, r13
	mov	rbp, rbp
	je	.label_1535
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	jle	.label_1543
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1557:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_1557
	mov	rsp, rsp
	jmp	.label_1543
.label_1564:
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	r14, rax
	jmp	.label_1556
	nop	dword ptr [rax]
.label_1560:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax]
	nop	
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	nop	
	cmp	edx, 9
	nop	
	je	.label_1534
	cmp	edx, 8
	jne	.label_1559
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r14
	mov	rbp, rbp
	jge	.label_1559
	shl	rax, 4
	nop	
	mov	qword ptr [rbx + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rax + 8], -1
	lea	rdi, [rdi]
	jmp	.label_1559
	nop	dword ptr [rax]
.label_1534:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	lea	rsi, [rsi]
	jge	.label_1559
	lea	rsi, [rsi]
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	mov	rbp, rbp
	jge	.label_1540
	mov	qword ptr [rbx + rax + 8], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	r13, rsi
	mov	rsi, rbx
	mov	rsp, rsp
	jmp	.label_1538
.label_1540:
	test	ecx, 0x80000
	je	.label_1546
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax], -1
	mov	rsp, rsp
	je	.label_1546
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xb0]
.label_1538:
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r13
	lea	rdi, [rdi]
	jmp	.label_1559
.label_1546:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1559:
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbx + 8]
	mov	rsp, rsp
	jne	.label_1567
	cmp	r15, qword ptr [r12 + 0xb0]
	nop	
	jne	.label_1567
	mov	rbp, rbp
	mov	r13, r12
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1577
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_1580
.label_1596:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_1594
	cmp	qword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_1580
.label_1594:
	inc	rax
	lea	rsi, [rsi]
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_1596
.label_1580:
	lea	rdi, [rdi]
	cmp	rax, r14
	je	.label_1597
	mov	rcx, qword ptr [r12]
	nop	
	lea	rax, [rcx - 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_1582
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	mov	rsp, rsp
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_1567:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	lea	rdi, [rdi]
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	mov	rbp, rbp
	test	al, 8
	mov	rsp, rsp
	jne	.label_1598
	nop	
	test	eax, 0x100000
	lea	rdi, [rdi]
	jne	.label_1570
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1588
	mov	rax, qword ptr [rsi + r13]
	nop	
	shl	rax, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx + 0x18]
	nop	
	mov	rdx, r14
	mov	rbp, rbp
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	je	.label_1593
	cmp	r14, -1
	je	.label_1542
	cmp	rdi, -1
	je	.label_1542
	cmp	r14, rdi
	je	.label_1593
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_1542
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rdi]
	lea	rdi, [rsi + r12]
	nop	
	add	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x80], rdx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_1542
.label_1593:
	cmp	r14, rdi
	lea	rsi, [rsi]
	jne	.label_1541
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	mov	r14, rdx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	rdx, r14
	lea	rsi, [rsi]
	test	al, al
	je	.label_1545
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	mov	rsp, rsp
	jle	.label_1541
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	ecx, 0
	nop	
	je	.label_1592
	nop	word ptr cs:[rax + rax]
.label_1539:
	lea	rsi, [rcx + rax]
	mov	rsp, rsp
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1539
.label_1592:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_1541
	mov	rbp, rbp
	cmp	qword ptr [r8 + rcx*8], r14
	mov	rbp, rbp
	je	.label_1554
	jmp	.label_1541
	nop	word ptr cs:[rax + rax]
.label_1598:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_node_set_insert
	nop	
	test	al, al
	je	.label_1545
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	lea	rdi, [rdi]
	test	r9, r9
	jle	.label_1561
	nop	
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	lea	r11, [r10 - 1]
	mov	rbp, rbp
	mov	r14, -1
	xor	r15d, r15d
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	nop	word ptr cs:[rax + rax]
.label_1555:
	nop	
	test	r10, r10
	jle	.label_1550
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_1587
	nop	dword ptr [rax]
.label_1533:
	lea	rdx, [rax + rsi]
	mov	rsp, rsp
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	nop	
	cmovge	rsi, rdx
	cmp	rax, rsi
	nop	
	jb	.label_1533
.label_1587:
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_1550
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_1550
	cmp	r14, -1
	lea	rdi, [rdi]
	jne	.label_1590
	mov	r14, rbx
.label_1550:
	inc	r15
	cmp	r15, r9
	jl	.label_1555
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	jmp	.label_1556
	nop	word ptr [rax + rax]
.label_1570:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rdx, eax
.label_1541:
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1544
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x30]
.label_1588:
	add	rsi, r13
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	call	check_node_accept
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	je	.label_1561
.label_1544:
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0xa8]
	nop	
	cmp	qword ptr [rbp - 0xb8], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_1583
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rax + 0xa8]
	lea	rsi, [rsi]
	jg	.label_1542
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1542
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	nop	
	test	rax, rax
	nop	
	jle	.label_1542
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_1568
	nop	word ptr cs:[rax + rax]
.label_1584:
	mov	rbp, rbp
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rbx, rdi
	nop	
	cmovge	rax, rsi
	mov	rsp, rsp
	cmp	rbx, rax
	jb	.label_1584
.label_1568:
	cmp	rbx, -1
	lea	rdi, [rdi]
	je	.label_1561
	cmp	qword ptr [rcx + rbx*8], r14
	lea	rdi, [rdi]
	jne	.label_1561
.label_1583:
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_1595
.label_1590:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_1562
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	edx, 0
	je	.label_1549
	nop	word ptr cs:[rax + rax]
.label_1563:
	lea	rsi, [rdx + rcx]
	nop	
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rbp, rbp
	jb	.label_1563
.label_1549:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	and	dl, cl
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	cmovne	rax, rbx
	test	dl, dl
	lea	rsi, [rsi]
	jne	.label_1564
	nop	
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0xa8]
	jne	.label_1586
	lea	rdi, [rdi]
	mov	r14, rax
	jmp	.label_1556
.label_1562:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	nop	
	je	.label_1556
.label_1586:
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1585
	mov	rdi, qword ptr [rcx + 0x10]
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1545
	mov	rax, qword ptr [rbp - 0xb8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa8]
	jmp	.label_1558
.label_1585:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
.label_1558:
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13], rdx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13 + 8], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1545
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	nop	
	jle	.label_1536
	mov	qword ptr [rbx], r15
	nop	
	shl	r15, 3
	mov	rdi, r15
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r12 + r13 + 0x28], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1551
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	jmp	.label_1554
.label_1536:
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_1554:
	mov	rdx, qword ptr [rbp - 0xa8]
.label_1595:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
.label_1556:
	test	r14, r14
	mov	rbp, rbp
	js	.label_1574
	mov	r12, qword ptr [rbp - 0x88]
	nop	
	jmp	.label_1553
.label_1574:
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	cmp	r14, -2
	lea	rsi, [rsi]
	je	.label_1545
	nop	dword ptr [rax]
.label_1561:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_1579
.label_1542:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [r13], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1582
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rbp, rbp
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	nop	
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	nop	
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_1553:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jle	.label_1560
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
.label_1591:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_1576
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_1576:
	xor	r14d, r14d
	test	r13, r13
	je	.label_1535
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r13], 0
	jle	.label_1543
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1581:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r13]
	mov	rbp, rbp
	jl	.label_1581
.label_1543:
	mov	rdi, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_1537
.label_1579:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	lea	rsi, [rsi]
	jmp	.label_1547
.label_1577:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	free
	xor	r14d, r14d
.label_1547:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_1535
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	jmp	.label_1537
.label_1597:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1565
	nop	
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_1565:
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	lea	rdi, [rdi]
	jle	.label_1552
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1589:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	lea	rdi, [rdi]
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	lea	rsi, [rsi]
	jl	.label_1589
	jmp	.label_1552
.label_1551:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1545:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_1575
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	call	free
.label_1575:
	mov	rsp, rsp
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0xb8]
	nop	
	test	r12, r12
	je	.label_1535
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_1552
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1569:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_1569
.label_1552:
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
.label_1537:
	mov	rsp, rsp
	call	free
.label_1535:
	lea	rdi, [rdi]
	mov	eax, r14d
	mov	rbp, rbp
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1582:
	mov	edi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4160e0

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
	js	.label_1599
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1606
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_1600
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_1605:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_1602
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_1605
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1601
.label_1600:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	mov	rsp, rsp
	bt	rcx, rax
	jb	.label_1601
	xor	edx, edx
	nop	
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1601
	jmp	.label_1603
.label_1602:
	cmp	byte ptr [rbx + 0x8e], 0
	nop	
	jne	.label_1604
.label_1607:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1601
.label_1603:
	mov	edx, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1601
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_1601
.label_1599:
	mov	edx, dword ptr [rbx + 0x70]
	mov	rbp, rbp
	jmp	.label_1601
.label_1606:
	and	edx, 2
	xor	edx, 0xa
.label_1601:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1604:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1601
	test	eax, eax
	jne	.label_1601
	jmp	.label_1607
	nop	
	.section	.text
	.align	32
	#Procedure 0x4161e0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_1608
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_1612
.label_1611:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0xf8]
	nop	
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1608
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1610
	nop	dword ptr [rax]
.label_1612:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rdx, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	lea	rdi, [rdi]
	jne	.label_1609
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_1609
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1609
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_1611
.label_1610:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rsp, rsp
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	nop	
	test	rdx, rdx
	je	.label_1608
	mov	qword ptr [rdx + 8], rbp
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	nop	
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax + rax]
.label_1609:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_1612
.label_1608:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416380

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
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x80], rsi
	lea	rdi, [rdi]
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_1646
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x90], r15
	nop	
	mov	r8, qword ptr [r13 + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], r8
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1624:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rax, qword ptr [rsp + 0x80]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], r14
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	shl	r14, 4
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + r14 + 8]
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	jne	.label_1637
	lea	rsi, [rsi]
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1639
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1641
	test	ecx, ecx
	je	.label_1637
.label_1641:
	lea	rsi, [rsi]
	test	bh, 8
	je	.label_1644
	test	ecx, ecx
	nop	
	jne	.label_1637
.label_1644:
	test	bh, 0x20
	je	.label_1649
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	and	ecx, 2
	je	.label_1637
.label_1649:
	test	bpl, bpl
	jns	.label_1639
	and	eax, 8
	je	.label_1637
	nop	dword ptr [rax]
.label_1639:
	mov	rbp, rbp
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x48], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	mov	rbp, rbp
	test	r12, r12
	mov	eax, 0
	jle	.label_1659
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_1613:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	nop	
	lea	rsi, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_1613
.label_1659:
	lea	rsi, [rsi]
	cmp	rax, r12
	jge	.label_1632
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1632
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	nop	
	cmp	qword ptr [rcx + rax*8 + 8], r8
	mov	rsp, rsp
	jne	.label_1632
	lea	rax, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_1648:
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], rcx
	lea	rsi, [rsi]
	je	.label_1654
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	lea	rax, [rax + 0x28]
	mov	rbp, rbp
	jne	.label_1648
.label_1632:
	cmp	qword ptr [r13 + 0xe8], 0
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rsi, [rsi]
	jle	.label_1631
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], r15
	mov	rax, qword ptr [r9]
	mov	rsp, rsp
	mov	r10, qword ptr [rax + r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_1658
	nop	word ptr cs:[rax + rax]
.label_1664:
	mov	rbp, rbp
	mov	rax, qword ptr [r9]
.label_1658:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xf8]
	nop	
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x68], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r10
	mov	rbp, rbp
	jne	.label_1633
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r11
	mov	rsp, rsp
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	jle	.label_1618
	nop	
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_1630
.label_1618:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	nop	
	jmp	.label_1629
.label_1642:
	nop	
	mov	r9, qword ptr [r13 + 0x58]
	mov	rsp, rsp
	cmp	rdi, r9
	nop	
	jg	.label_1663
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], rdi
	nop	
	mov	rdi, r13
	nop	
	mov	rdx, r14
	jg	.label_1638
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	jl	.label_1622
.label_1638:
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x98]
	jg	.label_1650
	cmp	rcx, r9
	lea	rdi, [rdi]
	jge	.label_1650
.label_1622:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1616
.label_1650:
	mov	r14, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	sub	rdx, r8
	mov	rsp, rsp
	mov	r13, rdi
	jle	.label_1645
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	nop	
	call	memset
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [r13 + 0xc0], rax
.label_1645:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_1628
	nop	dword ptr [rax + rax]
.label_1630:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	nop	
	sub	rdi, r15
	mov	rsp, rsp
	add	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_1636
	mov	rbp, rbp
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jg	.label_1642
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x98], rdi
.label_1628:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	nop	
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	jne	.label_1656
.label_1636:
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	nop	
	ja	.label_1616
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	inc	r12
	nop	
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	lea	rsi, [rsi]
	jl	.label_1630
	mov	rbp, rbp
	jmp	.label_1629
.label_1656:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
.label_1663:
	mov	rdx, rbx
	mov	rdi, r15
.label_1629:
	mov	rsp, rsp
	cmp	r12, rax
	lea	rsi, [rsi]
	jge	.label_1634
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_1633
.label_1634:
	test	r12, r12
	setg	al
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	add	rbp, rdi
	lea	rdi, [rdi]
	cmp	rbp, r8
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	jg	.label_1633
	jmp	.label_1657
.label_1662:
	cmp	r14, -1
	je	.label_1666
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r11
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	jne	.label_1615
	nop	
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1616
.label_1615:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	call	check_arrival
	lea	rsi, [rsi]
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	je	.label_1621
	test	r13d, r13d
	jne	.label_1616
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	lea	rdi, [rdi]
	je	.label_1643
.label_1661:
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_1616
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x20], rcx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	nop	
	mov	r8, qword ptr [rsp + 0x88]
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rbp, rbp
	cmp	r13d, 1
	ja	.label_1616
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_1617
.label_1627:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_1633
	mov	qword ptr [rsp + 0x78], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	lea	rbx, [rdx + 1]
	lea	rdi, [rdi]
	mov	r15, rdx
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13d, eax
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_1616
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	mov	rdx, r15
	jmp	.label_1653
.label_1643:
	lea	rsi, [rsi]
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r13d, 0xc
	nop	
	test	rax, rax
	je	.label_1616
	mov	rbp, rbp
	lea	rcx, [rbx + rbx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1661
	nop	dword ptr [rax]
.label_1657:
	cmp	rbp, qword ptr [r14]
	mov	rbp, rbp
	jle	.label_1623
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_1627
	lea	rbx, [rdx + 1]
.label_1653:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa0]
	movzx	eax, byte ptr [rbp + rcx - 1]
	nop	
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_1633
.label_1623:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_1620
	mov	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_1620
	mov	qword ptr [rsp + 0x98], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	lea	rdi, [rdi]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1665:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	nop	
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_1625
	cmp	qword ptr [rdx + rdi], r10
	je	.label_1662
.label_1625:
	nop	
	inc	rsi
	cmp	rsi, rax
	mov	rbp, rbp
	jl	.label_1665
.label_1666:
	lea	rdi, [rdi]
	mov	rbx, r13
.label_1617:
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	jmp	.label_1621
	nop	word ptr cs:[rax + rax]
.label_1620:
	nop	
	mov	r15, r14
	lea	rsi, [rsi]
	mov	rbx, r13
.label_1621:
	lea	rsi, [rsi]
	cmp	rbp, r8
	lea	rsi, [rsi]
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	jl	.label_1657
	nop	dword ptr [rax]
.label_1633:
	inc	r11
	lea	rsi, [rsi]
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_1664
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x90]
	jmp	.label_1631
.label_1654:
	mov	rax, r12
.label_1631:
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	cmp	r12, rax
	jge	.label_1637
	mov	rsp, rsp
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	dword ptr [rax]
.label_1647:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
	nop	
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbp - 0x18], rcx
	lea	rsi, [rsi]
	jne	.label_1626
	cmp	qword ptr [rax + rbp - 0x10], r8
	mov	rsp, rsp
	jne	.label_1626
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_1655
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_1660
.label_1655:
	mov	qword ptr [rsp + 0x48], r12
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rax, [rax*8]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x18]
.label_1660:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0xa0], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	lea	rsi, [r14 - 1]
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	nop	
	mov	rbx, r8
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1635
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
.label_1635:
	mov	qword ptr [rsp + 0x98], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	nop	
	lea	rdi, [rsp + 0x50]
	je	.label_1640
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	nop	
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	call	re_node_set_init_union
	nop	
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_1651
	nop	
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rbx, r12
	mov	rsp, rsp
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1614
	lea	rsi, [rsi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	je	.label_1614
	lea	rdi, [rdi]
	jmp	.label_1619
.label_1640:
	nop	
	lea	rdi, [rsp + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1614
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x90]
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0xa0]
	je	.label_1652
	mov	rsp, rsp
	jmp	.label_1619
.label_1614:
	mov	r15, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
.label_1652:
	nop	
	cmp	rdx, rcx
	jne	.label_1626
	mov	rax, qword ptr [rax + r8*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rax + 0x10], rcx
	mov	rbp, rbp
	jle	.label_1626
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_1619
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	r14, rcx
	mov	rbp, rbp
	call	transit_state_bkref
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r13d, eax
	nop	
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_1619
.label_1626:
	inc	r12
	add	rbp, 0x28
	lea	rdi, [rdi]
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1647
	nop	word ptr [rax + rax]
.label_1637:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_1624
.label_1646:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_1619
.label_1616:
	mov	dword ptr [rsp + 0x14], r13d
.label_1619:
	nop	
	mov	eax, r13d
	add	rsp, 0xa8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1651:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	jmp	.label_1619
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416fd0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	lea	rsi, [rsi]
	cmp	rsi, rdx
	mov	rbp, rbp
	ja	.label_1673
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1673
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1679
	mov	rax, qword ptr [r14 + 0x40]
	nop	
	lea	rsi, [rax*8 + 8]
	mov	rbp, rbp
	call	realloc
	mov	rbp, rbp
	mov	rcx, rax
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1673
	mov	qword ptr [r14 + 0xb8], rcx
.label_1679:
	nop	
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1680
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	jl	.label_1672
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1670
	jmp	.label_1673
.label_1680:
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_1677
	mov	rdi, r14
	lea	rsi, [rsi]
	call	build_wcs_buffer
	nop	
	jmp	.label_1670
.label_1672:
	mov	rbx, qword ptr [r14 + 0x30]
	nop	
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_1671
	lea	rsi, [rsi]
	jmp	.label_1669
.label_1667:
	nop	
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_1676
	nop	word ptr cs:[rax + rax]
.label_1669:
	mov	rcx, qword ptr [r14]
	nop	
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1667
.label_1676:
	mov	rbp, rbp
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	nop	
	ja	.label_1674
	nop	
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax + r12*4]
.label_1674:
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rbx], r12b
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, r15
	nop	
	jl	.label_1669
	mov	rsp, rsp
	mov	rbx, r15
.label_1671:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x30], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_1670
.label_1677:
	mov	rdx, qword ptr [r14 + 0x78]
	nop	
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1670
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovg	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1668
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rbp, rbp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1675
	nop	word ptr cs:[rax + rax]
.label_1678:
	mov	rdx, qword ptr [r14 + 0x78]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	nop	
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_1675:
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_1678
	lea	rdi, [rdi]
	mov	rax, rcx
.label_1668:
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_1670:
	lea	rdi, [rdi]
	xor	eax, eax
.label_1673:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417230

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
	jle	.label_1688
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1686
.label_1688:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_1683
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1682
	mov	rbp, rbp
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1689
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	nop	
	jmp	.label_1681
.label_1683:
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_1686
.label_1682:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1681:
	nop	
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	lea	rdi, [rdi]
	jne	.label_1686
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1686:
	test	rbx, rbx
	je	.label_1685
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1687
	lea	r12, [rbx + 8]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, r14
	lea	rsi, [rsi]
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	lea	rsi, [rsi]
	xor	eax, eax
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1684
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	lea	rdi, [rdi]
	je	.label_1684
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	transit_state_bkref
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	nop	
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1684
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rsp, rsp
	jmp	.label_1684
.label_1685:
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	jmp	.label_1684
.label_1687:
	mov	rax, rbx
.label_1684:
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1689:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1684
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417400

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
	mov	rbp, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1690
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_1691
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_1691
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1691
	lea	rsi, [rsi]
	add	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rbp], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0xc
	nop	
	je	.label_1697
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_1693
.label_1691:
	test	r13, r13
	jle	.label_1690
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1692
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1696
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_1702
.label_1690:
	test	r15, r15
	je	.label_1692
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1692
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1692
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1696
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_1702
.label_1692:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1702
.label_1698:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_1693:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_1694
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_1699
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_1693
	jmp	.label_1694
.label_1699:
	nop	
	sete	bl
	mov	rbp, rbp
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	nop	
	jl	.label_1698
	jmp	.label_1700
.label_1694:
	mov	rsp, rsp
	mov	rbx, rcx
.label_1700:
	nop	
	sub	r13, rbp
	jle	.label_1701
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	nop	
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_1695
.label_1701:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_1695
	mov	rsp, rsp
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	nop	
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_1695:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_1702:
	xor	ecx, ecx
.label_1697:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_1696:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_1697
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4176a0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	rsp, rsp
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1703
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1710
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	mov	rbp, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1706
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	mov	rbp, rbp
	add	rbp, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1710:
	nop	
	test	r15, r15
	nop	
	jle	.label_1704
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1705
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1705
.label_1704:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_1705:
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8 + 8], r14
	nop	
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	mov	rbp, rbp
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	mov	rbp, rbp
	cmovne	si, dx
	mov	rbp, rbp
	mov	word ptr [rax + rcx*8 + 0x22], si
	nop	
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1708
	mov	dword ptr [r13 + 0xe0], edi
.label_1708:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_1711
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1709
.label_1711:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_1707
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1707
.label_1709:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_1703
.label_1707:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_1703
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_1703:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1706:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_1703
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417900

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
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x98], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0xb0], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	rsp, rsp
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	mov	rbp, rbp
	jle	.label_1712
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x60], r8
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [r15 + 0x10]
.label_1732:
	mov	qword ptr [rsp + 0x28], r12
	nop	
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	lea	rsi, [rsi]
	jne	.label_1742
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	rbp, r14
	movaps	xmm0, xmmword ptr [rip + label_1325]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1713
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x14], 0
	nop	
	lea	rsi, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	nop	
	jne	.label_1717
	mov	qword ptr [rsp + 0xb8], r12
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rbp
	jmp	.label_1730
.label_1742:
	mov	rbp, qword ptr [r13 + r14*8]
	lea	rsi, [rsi]
	mov	rcx, r14
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1733
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	nop	
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1736
	mov	dword ptr [rsp + 0x18], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	r8, rcx
	jmp	.label_1739
.label_1733:
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rcx
	nop	
	jmp	.label_1741
.label_1736:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r8, rcx
	nop	
	jle	.label_1724
	mov	r12, r8
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], eax
	mov	qword ptr [rsp + 0x40], rbx
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1713
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	lea	rsi, [rsi]
	shl	r14, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, r12
	jmp	.label_1739
.label_1712:
	mov	rsp, rsp
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	rbp, rbp
	mov	r14d, 0xc
	lea	rsi, [rsi]
	cmp	rsi, rcx
	jle	.label_1726
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r8
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	shr	rax, 0x3d
	mov	rbp, rbp
	jne	.label_1726
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rbp, rbp
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	lea	rsi, [rsi*8]
	lea	rdi, [rdi]
	call	realloc
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_1726
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rax
	mov	rbp, rbp
	lea	rdi, [r13 + rbx*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	call	memset
	nop	
	jmp	.label_1732
.label_1724:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], eax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
.label_1739:
	test	byte ptr [rbp + 0x68], 0x40
	mov	rsp, rsp
	je	.label_1741
.label_1730:
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	je	.label_1722
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	expand_bkref_cache
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	jne	.label_1717
.label_1722:
	mov	rbx, r8
	lea	rdi, [rsp + 0x14]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	nop	
	mov	ecx, dword ptr [rsp + 0x18]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_1727
	mov	eax, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1718
.label_1727:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + r8*8], rbp
.label_1741:
	mov	r15, qword ptr [rsp + 0x98]
	cmp	r8, r15
	jge	.label_1740
	nop	
	lea	rbx, [rsp + 0x40]
	xor	ecx, ecx
.label_1747:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rbp
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [r13 + 0xe0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jg	.label_1731
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], 0
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_1738
	add	rsi, 8
	mov	rdi, r15
	mov	rsp, rsp
	mov	rbx, r8
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1718
.label_1738:
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_1714
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_1715
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1743:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	mov	rsp, rsp
	je	.label_1728
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r8
	mov	rbp, rbp
	mov	r14, r8
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_1746
	mov	rcx, qword ptr [rbx + 0x18]
	nop	
	mov	rdx, r14
	mov	r14, rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + r15*8]
	lea	rdi, [rdi]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x70]
	nop	
	je	.label_1734
	add	rsi, 8
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbx, rcx
	mov	rbp, rbp
	call	re_node_set_merge
	mov	rsp, rsp
	mov	rcx, rbx
	mov	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x94], ebx
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_1735
.label_1734:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_1719
	lea	rdi, [rsp + 0x94]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + rbp*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	mov	rbp, rbp
	jne	.label_1721
	mov	ebx, dword ptr [rsp + 0x94]
	test	ebx, ebx
	je	.label_1721
	jmp	.label_1735
	nop	word ptr cs:[rax + rax]
.label_1746:
	mov	r14, rbx
	test	eax, eax
	jne	.label_1721
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_1728:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_1737
.label_1721:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_1719
.label_1737:
	inc	r12
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jl	.label_1743
	mov	rdi, qword ptr [rsp + 0x80]
	lea	r15, [rsp + 0x40]
.label_1715:
	nop	
	mov	rbx, r8
	mov	rsp, rsp
	call	free
	nop	
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], 0
.label_1714:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	je	.label_1720
	lea	rsi, [rsi]
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1718
	nop	
	mov	rdi, r13
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	rbp, rbp
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	r8, r12
	nop	
	jne	.label_1718
.label_1720:
	mov	rbp, rbp
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rdx, r15
	mov	rbx, r15
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1745
	nop	
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1718
.label_1745:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	cmp	r14, r15
	mov	r8, r14
	jl	.label_1747
	lea	rdi, [rdi]
	jmp	.label_1723
.label_1740:
	mov	rsp, rsp
	mov	r14, r8
.label_1723:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	nop	
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	je	.label_1729
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	jle	.label_1729
	xor	r14d, r14d
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	je	.label_1725
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_1744:
	lea	rsi, [rsi]
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	nop	
	cmp	rdx, rcx
	jb	.label_1744
	lea	rsi, [rsi]
	jmp	.label_1716
.label_1719:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x14], ebx
	mov	rbp, rbp
	jmp	.label_1718
.label_1735:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], ebx
.label_1718:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	call	free
	mov	r14d, dword ptr [rsp + 0x14]
	nop	
	jmp	.label_1726
.label_1725:
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x60]
.label_1716:
	cmp	rdx, -1
	nop	
	je	.label_1729
	cmp	qword ptr [rax + rdx*8], rbp
	nop	
	je	.label_1726
.label_1729:
	lea	rsi, [rsi]
	mov	r14d, 1
.label_1726:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1717:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	jmp	.label_1726
.label_1713:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	r14d, 0xc
	nop	
	jmp	.label_1726
.label_1731:
	mov	r14, r8
	jmp	.label_1723
	nop	
	.section	.text
	.align	32
	#Procedure 0x4182d0

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
	mov	r15d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1749
	test	r12, r12
	mov	rbp, rbp
	jle	.label_1755
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_1752
	nop	dword ptr [rax]
.label_1753:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_1752
	lea	rsi, [rsi]
	jmp	.label_1755
	nop	word ptr cs:[rax + rax]
.label_1750:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_1748
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_1756
	nop	
.label_1752:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	lea	r9, [rdx + rdx*2]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1748
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_1754:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_1751
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1750
.label_1751:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_1754
.label_1748:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1756:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_1753
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_1749
.label_1755:
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	xor	ebx, ebx
.label_1749:
	mov	eax, ebx
	nop	
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418490

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
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	rax, qword ptr [r10 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	lea	rdi, [rdi]
	mov	edx, 0
	lea	rdi, [rdi]
	jle	.label_1761
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_1770:
	mov	rbp, rbp
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rsp, rsp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbp
	mov	rbp, rbp
	cmp	rdx, rdi
	jl	.label_1770
.label_1761:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_1767
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_1767
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_1767
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_1777
.label_1788:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_1777:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_1757:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1759
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_1772
	nop	
.label_1779:
	mov	rsp, rsp
	lea	rbp, [rsi + rdi]
	lea	rsi, [rsi]
	shr	rbp, 1
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], rdx
	nop	
	lea	rbx, [rbp + 1]
	lea	rsi, [rsi]
	cmovl	rsi, rbx
	mov	rbp, rbp
	cmovge	rdi, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jb	.label_1779
.label_1772:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_1759
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_1759
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_1766
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1781
	nop	dword ptr [rax + rax]
.label_1783:
	lea	rsi, [rdx + rcx]
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	mov	rsp, rsp
	cmp	rdx, rcx
	jb	.label_1783
.label_1781:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_1765
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_1765
	mov	rbp, r14
	jmp	.label_1773
.label_1766:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1775
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_1771
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1787
.label_1768:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_1768
.label_1787:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_1771
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1774
.label_1771:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_1778
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1785
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_1769
.label_1765:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rip + label_1325]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1776
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_1762:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ecx, dword ptr [rsp + 0x38]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_1786
.label_1763:
	mov	r14, rbp
	jmp	.label_1773
.label_1775:
	movaps	xmm0, xmmword ptr [rip + label_1325]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1758
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_1764
.label_1778:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_1769:
	mov	rsp, rsp
	xor	ebx, ebx
.label_1780:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1782
	xor	al, 1
	mov	rsp, rsp
	jne	.label_1782
.label_1764:
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	nop	
	sete	al
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, al
	movzx	ecx, cl
	nop	
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	cmovne	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
.label_1774:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_1773:
	test	ecx, ecx
	je	.label_1759
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_1760
	nop	dword ptr [rax + rax]
.label_1759:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_1757
	nop	
	jmp	.label_1767
.label_1776:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_1762
.label_1786:
	lea	rsi, [rsi]
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r14d
	mov	rsp, rsp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], r14d
	mov	rbp, rbp
	jmp	.label_1763
.label_1782:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], ebx
	nop	
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], ebx
	lea	rsi, [rsi]
	jmp	.label_1784
.label_1758:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], 0xc
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1784:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1773
.label_1785:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_1780
.label_1760:
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_1788
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_1767:
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418aa0

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
	mov	rbp, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	nop	
	jmp	.label_1795
	nop	
.label_1794:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_1795:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1797
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_1796
	nop	dword ptr [rax]
.label_1793:
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rax, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_1793
.label_1796:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_1797
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1798
.label_1797:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_1790
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_1789
.label_1790:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_1791
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1792
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1794
	jmp	.label_1798
	nop	word ptr cs:[rax + rax]
.label_1792:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1791
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_1794
.label_1789:
	cmp	r15d, 9
	jne	.label_1798
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	nop	
	je	.label_1791
.label_1798:
	nop	
	xor	eax, eax
.label_1791:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418c40

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
	mov	r14, rdi
	nop	
	mov	r8, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r8, r8
	je	.label_1814
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_1811
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1801
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_1801
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 2
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 3
	nop	
	je	.label_1805
	nop	
	lea	ebp, [r8 - 4]
	nop	
	shr	ebp, 2
	nop	
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1819:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	mov	rbp, rbp
	paddq	xmm0, xmm2
	nop	
	paddq	xmm1, xmm3
	add	rdi, 4
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	jne	.label_1819
	jmp	.label_1802
.label_1805:
	pxor	xmm1, xmm1
.label_1802:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_1803
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1823:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	lea	rsi, [rsi]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	lea	rdi, [rdi]
	paddq	xmm3, xmm1
	nop	
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	lea	rsi, [rsi]
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rbp, rbp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	nop	
	paddq	xmm4, xmm2
	mov	rbp, rbp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm5
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rax, -0x10
	mov	rsp, rsp
	jne	.label_1823
.label_1803:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1811
.label_1801:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_1807:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_1807
.label_1811:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rax, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1824
	nop	
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1799:
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_1809
	mov	r13, qword ptr [rdx + rbx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_1809
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1809
	nop	
	mov	rdi, r8
.label_1816:
	test	rdi, rdi
	nop	
	jle	.label_1812
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_1816
	nop	dword ptr [rax]
.label_1809:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jl	.label_1799
.label_1824:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	mov	rsp, rsp
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1808
	mov	rbp, rbp
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 8]
	nop	
	test	rbx, rbx
	jle	.label_1813
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1820
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1806
.label_1813:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_1810
	mov	rbp, rbp
	lea	r14, [r12 + 0x10]
.label_1806:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1804:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	nop	
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	lea	rsi, [rsi]
	mov	ecx, ebp
	nop	
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_1800
	movzx	esi, bpl
	mov	rsp, rsp
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	mov	rbp, rbp
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	lea	rsi, [rsi]
	cmp	esi, 0xc
	je	.label_1818
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_1817
	cmp	esi, 2
	lea	rsi, [rsi]
	jne	.label_1821
	or	bl, 0x10
	jmp	.label_1822
.label_1817:
	or	bl, 0x40
	jmp	.label_1822
.label_1821:
	lea	rdi, [rdi]
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1800
.label_1818:
	mov	rbp, rbp
	or	bl, 0x80
.label_1822:
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x68], bl
.label_1800:
	mov	rbp, rbp
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1804
.label_1810:
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	register_state
	test	eax, eax
	mov	rbp, rbp
	je	.label_1812
	mov	rbp, rbp
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_1808
.label_1814:
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
	jmp	.label_1815
.label_1820:
	mov	rdi, r13
	call	free
.label_1808:
	mov	rbp, rbp
	mov	dword ptr [r14], 0xc
.label_1815:
	lea	rsi, [rsi]
	xor	r13d, r13d
.label_1812:
	mov	rbp, rbp
	mov	rax, r13
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419090

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	nop	
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	lea	rdi, [rdi]
	cmp	r10d, 7
	je	.label_1831
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_1825
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_1825
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_1829:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_1825
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_1829
.label_1825:
	cmp	r10d, 5
	jne	.label_1835
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_1828
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_1846
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_1828
.label_1846:
	test	al, al
	js	.label_1842
	mov	r14d, ebx
	jmp	.label_1828
.label_1835:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_1828
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1828
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1834
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_1834
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_1837
.label_1834:
	cmp	r8d, 1
	jne	.label_1838
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_1837
.label_1838:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_1837:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_1841
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1848:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_1836
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_1848
.label_1841:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_1849
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1850:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_1836
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_1850
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_1849:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_1826
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1851:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_1840
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_1847
.label_1840:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_1851
	jmp	.label_1826
.label_1836:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_1826:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1832
	mov	r14d, ecx
	jmp	.label_1828
.label_1832:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_1828
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_1828
.label_1842:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_1828
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_1828
.label_1831:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_1844
.label_1828:
	mov	rbp, rbp
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_1847:
	nop	
	mov	ecx, ebx
	jmp	.label_1826
.label_1844:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_1828
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_1833
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0xc0
	sbb	eax, eax
	mov	rbp, rbp
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_1828
.label_1833:
	cmp	edi, 0xef
	nop	
	ja	.label_1843
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_1827
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_1828
	jmp	.label_1827
.label_1843:
	cmp	edi, 0xf7
	nop	
	ja	.label_1830
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_1827
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_1828
	jmp	.label_1827
.label_1830:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_1839
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_1827
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_1828
	mov	rsp, rsp
	jmp	.label_1827
.label_1839:
	cmp	edi, 0xfd
	ja	.label_1828
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_1827
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_1828
.label_1827:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_1828
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_1845:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_1828
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_1828
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_1845
	mov	r14d, esi
	jmp	.label_1828
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419480

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	mov	rbp, rbp
	movzx	ebp, bl
	mov	rbp, rbp
	xor	eax, eax
	nop	
	dec	ebp
	cmp	ebp, 6
	lea	rsi, [rsi]
	ja	.label_1852
	lea	rdi, [rdi]
	jmp	qword ptr [(rbp * 8) + label_1858]
.label_2295:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_1856
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1852
.label_2296:
	mov	rsi, qword ptr [rsi]
	nop	
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	mov	rsp, rsp
	jb	.label_1856
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1852
.label_2298:
	lea	rdi, [rdi]
	test	cl, cl
	js	.label_1860
.label_2297:
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_1855
	movzx	eax, cl
	nop	
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_1856
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1856
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1852
.label_1855:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_1859
.label_1856:
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	mov	al, 1
	lea	rsi, [rsi]
	test	bp, 0x3ff
	lea	rsi, [rsi]
	je	.label_1852
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	edx, eax
	mov	rsp, rsp
	call	re_string_context_at
	nop	
	mov	ecx, eax
	and	ecx, 1
	lea	rsi, [rsi]
	test	bpl, 4
	mov	rsp, rsp
	je	.label_1854
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_1854
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1852
.label_1854:
	lea	rdi, [rdi]
	test	bh, 8
	lea	rdi, [rdi]
	je	.label_1857
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1857
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1852
.label_1860:
	xor	eax, eax
	nop	
	jmp	.label_1852
.label_1857:
	test	bh, 0x20
	mov	rsp, rsp
	je	.label_1853
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 2
	lea	rdi, [rdi]
	jne	.label_1853
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_1852
.label_1859:
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_1852
.label_1853:
	lea	rdi, [rdi]
	and	eax, 8
	nop	
	test	bpl, bpl
	mov	rsp, rsp
	setns	cl
	mov	rsp, rsp
	shr	eax, 3
	mov	rbp, rbp
	or	al, cl
.label_1852:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419610

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
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xa8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rsi
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1879
	lea	rax, [r13 + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1886
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0x30], rax
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1953:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	mov	rbp, rbp
	movzx	r10d, al
	cmp	r10d, 1
	mov	rsp, rsp
	jne	.label_1907
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	mov	rbp, rbp
	shl	rdx, cl
	mov	rbp, rbp
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x90], rdx
	jmp	.label_1898
	nop	word ptr cs:[rax + rax]
.label_1907:
	cmp	r10d, 7
	je	.label_1930
	cmp	r10d, 5
	je	.label_1932
	lea	rdi, [rdi]
	cmp	r10d, 3
	nop	
	jne	.label_1877
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	por	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	jmp	.label_1898
.label_1930:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], -1
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rsp, rsp
	mov	rdx, -2
	mov	rsp, rsp
	test	cl, 0x40
	jne	.label_1946
	nop	
	mov	qword ptr [rbp - 0x90], -0x401
	mov	rdx, -0x402
.label_1946:
	nop	
	test	cl, cl
	lea	rsi, [rsi]
	jns	.label_1898
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rdx
	lea	rdi, [rdi]
	jmp	.label_1898
.label_1932:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1960
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	nop	
	movdqu	xmm0, xmmword ptr [rcx]
	nop	
	por	xmm0, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	mov	rbp, rbp
	por	xmm1, xmmword ptr [rbp - 0x80]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm0
	jmp	.label_1861
.label_1960:
	mov	qword ptr [rbp - 0x78], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], -1
	mov	qword ptr [rbp - 0x90], -1
	lea	rsi, [rsi]
	mov	rcx, -1
.label_1861:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	mov	rbp, rbp
	jne	.label_1914
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x90], rcx
.label_1914:
	test	dl, dl
	jns	.label_1898
	lea	rdi, [rdi]
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x90], rcx
	nop	dword ptr [rax]
.label_1898:
	mov	rsp, rsp
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	mov	rbp, rbp
	je	.label_1895
	lea	rdi, [rdi]
	test	cl, 0x20
	mov	rsp, rsp
	je	.label_1911
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	test	dh, 4
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	je	.label_1877
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0x400
.label_1911:
	nop	
	test	cl, cl
	js	.label_1920
	lea	rsi, [rsi]
	test	cl, 4
	je	.label_1922
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_1920
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_1937
	mov	rdx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	movq	r8, xmm1
	mov	rbp, rbp
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	r9, xmm0
	nop	
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	nop	
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	lea	rdi, [rdi]
	pand	xmm1, xmmword ptr [rbp - 0x80]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	pshufd	xmm0, xmm1, 0x4e
	lea	rdi, [rdi]
	movq	rdx, xmm0
	mov	rsp, rsp
	or	rdx, rbx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	jmp	.label_1933
.label_1937:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	lea	rsi, [rsi]
	pand	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x80]
	movq	rdi, xmm0
	mov	rsp, rsp
	or	rdi, rdx
	or	rdi, r8
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_1933:
	test	rdx, rdx
	je	.label_1877
.label_1922:
	lea	rsi, [rsi]
	test	cl, 8
	mov	rbp, rbp
	je	.label_1895
	mov	rbp, rbp
	cmp	r10d, 1
	setne	cl
	nop	
	test	eax, 0x400000
	lea	rsi, [rsi]
	je	.label_1882
	mov	rbp, rbp
	test	cl, cl
	mov	rbp, rbp
	jne	.label_1882
	nop	word ptr cs:[rax + rax]
.label_1920:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	jmp	.label_1877
.label_1882:
	nop	
	cmp	dword ptr [r12 + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1901
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	nop	
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm1
	lea	rsi, [rsi]
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	nop	
	pandn	xmm1, xmmword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movq	rdi, xmm1
	or	rdi, rcx
	mov	rsp, rsp
	or	rdi, rdx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	nop	
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_1869
.label_1901:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	lea	rsi, [rsi]
	pandn	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movq	rdx, xmm0
	or	rdx, rax
	mov	rbp, rbp
	or	rdx, rcx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	lea	rdi, [rdi]
	movq	rax, xmm0
	mov	rsp, rsp
	or	rax, rdx
.label_1869:
	test	rax, rax
	mov	rbp, rbp
	je	.label_1877
	nop	
.label_1895:
	nop	
	test	r14, r14
	nop	
	jle	.label_1871
	mov	qword ptr [rbp - 0x58], rsi
	mov	r13, qword ptr [rbp - 0x30]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, r10d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edx
	nop	word ptr cs:[rax + rax]
.label_1910:
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_1957
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_1870
.label_1957:
	nop	
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], r14
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	r9, r12
	mov	rsp, rsp
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rbp, rbp
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	lea	rdi, [rdi]
	or	rbx, r11
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	mov	rbp, rbp
	je	.label_1862
	lea	rdi, [rdi]
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	lea	rdi, [rdi]
	not	r12
	lea	rdi, [rdi]
	and	r12, rax
	mov	qword ptr [rbp - 0x68], r12
	mov	qword ptr [rbp - 0x90], r12
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	not	rdx
	nop	
	and	rdx, r14
	lea	rdi, [rdi]
	mov	rax, rdx
	or	rax, rbx
	lea	rdi, [rdi]
	not	r14
	lea	rdi, [rdi]
	and	r14, rcx
	mov	qword ptr [rbp - 0x88], r14
	lea	rdi, [rdi]
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	lea	rsi, [rsi]
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x80], r15
	mov	r12, qword ptr [rbp - 0xb8]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rsi
	nop	
	or	rax, rdi
	mov	rbp, rbp
	mov	r12, rsi
	je	.label_1940
	mov	qword ptr [rbp - 0xb8], r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, rsi
	shl	rax, 5
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	nop	
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	nop	
	lea	r12, [rsi + rsi*2]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xe0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1926
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	shl	rdi, 3
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xb8]
	je	.label_1956
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	call	memcpy
	nop	
	jmp	.label_1865
	nop	word ptr cs:[rax + rax]
.label_1862:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	edx, dword ptr [rbp - 0x50]
	jmp	.label_1870
.label_1926:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0xb8]
.label_1865:
	mov	rsp, rsp
	inc	qword ptr [rbp - 0xa0]
.label_1940:
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	al, al
	je	.label_1894
	mov	rsp, rsp
	or	r14, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	or	r15, r12
	or	r15, r14
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	je	.label_1899
.label_1870:
	mov	rsp, rsp
	inc	rdi
	mov	rsp, rsp
	add	r13, 0x20
	mov	rsp, rsp
	add	qword ptr [rbp - 0x58], 0x18
	nop	
	cmp	rdi, r14
	jl	.label_1910
	nop	
	jmp	.label_1899
.label_1871:
	xor	edi, edi
.label_1899:
	cmp	rdi, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jne	.label_1877
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rsi, [rsi]
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x90]
	nop	
	movdqa	xmm1, xmmword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rsp, rsp
	mov	r15, rbx
	lea	rsi, [rsi]
	lea	rbx, [rdi + rdi*2]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r15*8]
	mov	rbp, rbp
	movdqa	xmm0, xmmword ptr [rip + label_1325]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	rbp, rbp
	mov	r12, rdi
	mov	rbp, rbp
	mov	edi, 8
	mov	rsp, rsp
	call	malloc
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_1942
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	inc	r12
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_1877:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	jl	.label_1953
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_1886
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	xor	ecx, ecx
	test	rax, rax
	lea	rdi, [rdi]
	mov	edx, 0xc
	mov	rsp, rsp
	cmovne	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_1864
	mov	rbp, rbp
	test	rax, rax
	je	.label_1864
	nop	
	lea	rax, [r14*8]
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1959
	mov	qword ptr [rbp - 0x60], r13
	mov	rsp, rsp
	mov	rax, rsp
	lea	rsi, [rsi]
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	nop	
	mov	dword ptr [rbp - 0xc0], 0
	jmp	.label_1890
.label_1956:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rax], xmm0
.label_1894:
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	r12, qword ptr [rbp - 0xa0]
.label_1925:
	mov	r14, -1
	test	r12, r12
	nop	
	jle	.label_1886
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_1947:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1947
	mov	rsi, r15
.label_1886:
	mov	rdi, rsi
	nop	
	call	free
	test	r14, r14
	mov	rsp, rsp
	je	.label_1866
	xor	eax, eax
	nop	
	jmp	.label_1917
.label_1866:
	mov	edi, 8
	lea	rdi, [rdi]
	mov	esi, 0x100
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	test	rax, rax
	setne	al
	mov	rbp, rbp
	jmp	.label_1917
.label_1879:
	xor	eax, eax
	jmp	.label_1917
.label_1959:
	nop	
	call	malloc
	test	rax, rax
	nop	
	je	.label_1864
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc0], ecx
.label_1890:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], r14
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xb8], rax
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
.label_1949:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], 0
	nop	
	lea	rcx, [r14 + r14*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xe0], r15
	test	rax, rax
	jle	.label_1954
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1889:
	nop	
	mov	rcx, qword ptr [r13 + r15*8]
	nop	
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_1908
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xf8]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0xd4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1881
	mov	rax, qword ptr [rbx]
.label_1908:
	nop	
	inc	r15
	mov	rsp, rsp
	cmp	r15, rax
	nop	
	jl	.label_1889
.label_1954:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rbp - 0xd4]
	mov	rbp, rbp
	mov	rsi, r12
	nop	
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1948
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_1881
.label_1948:
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1909
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_1912
.label_1909:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	lea	rdi, [rbp - 0xd4]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_1921
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	test	ecx, ecx
	nop	
	jne	.label_1881
.label_1921:
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	je	.label_1927
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 1
	mov	rbp, rbp
	jg	.label_1931
	mov	rax, qword ptr [rbp - 0xc8]
.label_1931:
	mov	qword ptr [rbp - 0xc8], rax
.label_1927:
	mov	ecx, 2
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1912
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1881
.label_1912:
	mov	rbp, rbp
	mov	rax, r14
	shl	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	or	rdx, qword ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rsi, qword ptr [rbp - 0x98]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	mov	rbp, rbp
	cmp	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	jl	.label_1949
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xc8]
	and	al, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	edi, 8
	jne	.label_1872
	lea	rsi, [rsi]
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_1881
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	je	.label_1888
	mov	rsp, rsp
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	jmp	.label_1896
.label_1905:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	mov	rbp, rbp
	je	.label_1905
	test	qword ptr [r12 + 0xb8], rdx
	nop	
	je	.label_1913
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_1915
.label_1913:
	nop	
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_1915:
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_1918
.label_1896:
	mov	rbx, -1
	lea	rsi, [rsi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_1905
.label_1918:
	mov	rbp, rbp
	add	rdx, rdx
	shr	rdi, 1
	lea	rsi, [rsi]
	inc	r9
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_1896
.label_1888:
	nop	
	mov	rsi, r15
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_1924
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_1929
.label_1935:
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	lea	rdi, [rdi]
	test	qword ptr [rcx], rdx
	nop	
	lea	rcx, [rcx + 0x20]
	je	.label_1935
	test	qword ptr [r12 + 0xc0], rdx
	mov	rsp, rsp
	je	.label_1938
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1941
.label_1938:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_1941:
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_1945
.label_1929:
	lea	rsi, [rsi]
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_1935
.label_1945:
	lea	rsi, [rsi]
	add	rdx, rdx
	lea	rsi, [rsi]
	shr	rsi, 1
	inc	r9
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1929
.label_1924:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xc0]
	je	.label_1951
	nop	
	lea	r8, [r14 + 0x1810]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_1880
.label_1958:
	mov	rbx, rdi
	nop	
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	nop	
	je	.label_1958
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_1863
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_1868
.label_1863:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1868:
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_1873
.label_1880:
	mov	rdi, -1
	test	r10b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_1958
.label_1873:
	add	rdx, rdx
	shr	r10, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r10, r10
	nop	
	jne	.label_1880
.label_1951:
	test	r13, r13
	je	.label_1884
	nop	
	lea	r8, [r14 + 0x1818]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0xc0
	jmp	.label_1887
.label_1891:
	nop	
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_1891
	nop	
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_1897
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rsp, rsp
	jmp	.label_1904
.label_1897:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_1904:
	mov	rsp, rsp
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	jmp	.label_1878
.label_1887:
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r13b, 1
	nop	
	mov	rcx, r8
	mov	rsp, rsp
	jne	.label_1891
.label_1878:
	add	rdx, rdx
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	test	r13, r13
	nop	
	jne	.label_1887
.label_1884:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	ch, 4
	je	.label_1875
	lea	rdi, [rdi]
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_1923:
	mov	rsp, rsp
	test	byte ptr [rdx + 1], 4
	lea	rdi, [rdi]
	jne	.label_1893
	mov	rbp, rbp
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_1923
	nop	
	jmp	.label_1875
.label_1942:
	mov	rsp, rsp
	lea	rax, [rsi + rbx*8]
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_1925
.label_1864:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1936
.label_1893:
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	test	dl, dl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_1875
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x850], rcx
.label_1875:
	test	r11b, r11b
	nop	
	je	.label_1944
	mov	rdi, r9
	lea	rsi, [rsi]
	call	free
.label_1944:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_1950:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rsp, rsp
	add	rbx, 0x18
	dec	r15
	jne	.label_1950
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	call	free
	nop	
	mov	al, 1
	jmp	.label_1917
.label_1872:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x60], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1881
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x58]
	je	.label_1952
	mov	rbp, rbp
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jmp	.label_1867
.label_1881:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_1876
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_1876:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xe0]
	jle	.label_1885
.label_1936:
	lea	rdi, [rdi]
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1900:
	nop	
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r14
	jne	.label_1900
.label_1885:
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	nop	
	xor	eax, eax
.label_1917:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1919:
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1919
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	nop	
	jmp	.label_1916
.label_1867:
	mov	rbx, -1
	test	dil, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_1919
.label_1916:
	lea	rdi, [rdi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	inc	r9
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_1867
.label_1952:
	mov	rbp, rbp
	mov	rsi, r15
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_1928
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	r9d, 0x40
	lea	rsi, [rsi]
	jmp	.label_1934
.label_1939:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_1939
	mov	rsp, rsp
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_1943
.label_1934:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	sil, 1
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_1939
.label_1943:
	add	rdx, rdx
	lea	rdi, [rdi]
	shr	rsi, 1
	mov	rbp, rbp
	inc	r9
	test	rsi, rsi
	jne	.label_1934
.label_1928:
	mov	r9, r10
	nop	
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	je	.label_1955
	lea	r8, [r14 + 0x1810]
	mov	rsp, rsp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	nop	
	jmp	.label_1883
.label_1903:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	nop	
	lea	rdi, [rdi + 0x20]
	nop	
	je	.label_1903
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_1906
.label_1883:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	cl, 1
	mov	rbp, rbp
	mov	r10, rcx
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_1903
.label_1906:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rsp, rsp
	mov	rcx, r10
	shr	rcx, 1
	mov	rbp, rbp
	inc	rsi
	test	rcx, rcx
	jne	.label_1883
.label_1955:
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_1884
	lea	rdi, [rdi]
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	mov	rsp, rsp
	jmp	.label_1892
.label_1902:
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	lea	rdi, [rdi]
	je	.label_1902
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_1874
.label_1892:
	mov	rbp, rbp
	mov	rbx, -1
	test	r13b, 1
	nop	
	mov	rdi, r8
	lea	rsi, [rsi]
	jne	.label_1902
.label_1874:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r13, r13
	nop	
	je	.label_1884
	lea	rsi, [rsi]
	jmp	.label_1892
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ab20

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
	sub	rsp, 0x58
	nop	
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_1325]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1977
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1965
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_1968:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_1969
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_1971
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_1972
	nop	dword ptr [rax]
.label_1971:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_1972:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_1978
	mov	dword ptr [rsp + 0x4c], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], 0
	lea	r13, [rdx - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_1970
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_1970
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1979:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	r12, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r12
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	r12, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_1967
	mov	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	nop	
	call	check_node_accept_bytes
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_1976
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_1974
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_1963
.label_1976:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_1963
	mov	rbp, rbp
	jmp	.label_1967
.label_1974:
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r15
	mov	r15, rsi
	nop	
	je	.label_1967
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_1967
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_1973
	nop	word ptr [rax + rax]
.label_1980:
	mov	rbp, rbp
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	mov	rbp, rbp
	cmovge	rsi, rbp
	lea	rsi, [rsi]
	cmp	rdi, rsi
	jb	.label_1980
.label_1973:
	mov	rbp, rbp
	test	eax, eax
	je	.label_1967
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_1967
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_1963
.label_1967:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	r12, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	check_node_accept
	nop	
	test	al, al
	nop	
	je	.label_1964
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1964
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_1964
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	lea	rsi, [rsi]
	dec	rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	mov	rbp, rbp
	je	.label_1966
.label_1962:
	lea	rdi, [rsi + rax]
	mov	rbp, rbp
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	mov	rbp, rbp
	lea	rbp, [rdi + 1]
	nop	
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	mov	rbp, rbp
	jb	.label_1962
.label_1966:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_1964
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_1964
	nop	
.label_1963:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_1961
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	r8, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + r8*8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	r9, r13
	call	check_dst_limits
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1964
.label_1961:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_1965
.label_1964:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_1979
.label_1970:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_1968
	mov	rbp, rbp
	jmp	.label_1965
.label_1969:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_1965
.label_1978:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_1965:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_1975:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1977:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_1975
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41af90

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
	sub	rsp, 0xc8
	mov	r11, rcx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	nop	
	mov	r13, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	cmove	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r11 + 8], 0
	lea	rdi, [rdi]
	je	.label_2027
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_2042
	mov	rbp, rbp
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	lea	rsi, [rsi]
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x10]
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_2003
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2010
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	shl	rdi, 3
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	mov	rsp, rsp
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], ecx
	je	.label_2003
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2010
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_1985:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1981
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_1985
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_2010:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp]
	jne	.label_2000
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_2042
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_2015
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1997:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_1982
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_1982
	mov	rdx, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12]
	nop	
	shl	rdx, 4
	mov	rsp, rsp
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x48], r8
	mov	rbp, rbp
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2037
	nop	
	test	rax, rax
	nop	
	jle	.label_1982
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_2021:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_1991
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_2005
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_2008
	mov	rbp, rsi
.label_2008:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_2005
	nop	word ptr cs:[rax + rax]
.label_1991:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2032
	mov	rbp, r14
.label_2032:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_2005:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_2021
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_2026
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1992
.label_2026:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_1982
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_1982
	nop	dword ptr [rax]
.label_2004:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2023
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_2039
	nop	dword ptr [rax]
.label_2002:
	mov	rsp, rsp
	lea	rbx, [rax + rdx]
	lea	rdi, [rdi]
	shr	rbx, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	cmovl	rax, rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2002
.label_2039:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2023
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_1996
.label_2023:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_2024
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_2034
	nop	dword ptr [rax]
.label_2035:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	nop	
	cmp	qword ptr [rcx + rdi*8], r14
	nop	
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rbx
	cmovge	rdx, rdi
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2035
.label_2034:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2024
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_1996
.label_2024:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	r15, r13
	nop	
	mov	rdi, r12
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r12, r10
	nop	
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	nop	
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jne	.label_1992
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_1996:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_2004
	jmp	.label_1982
.label_2037:
	nop	
	test	rax, rax
	mov	ebp, 0
	jg	.label_1988
	jmp	.label_1982
	nop	dword ptr [rax]
.label_1987:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_1988:
	mov	rbp, rbp
	mov	rdx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	shl	rdx, 4
	nop	
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	mov	rbp, rbp
	and	edi, ebx
	nop	
	or	edi, 1
	cmp	edi, 9
	jne	.label_2018
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2018
	mov	rbp, rbp
	mov	r14, r15
	mov	r15, r13
	mov	rsp, rsp
	mov	rdi, r12
	mov	r13, r12
	mov	rsp, rsp
	mov	rdx, r11
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbx, r11
	lea	rsi, [rsi]
	call	sub_epsilon_src_nodes
	mov	rbp, rbp
	mov	r10, r12
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_1992
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_2018:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_1987
	nop	word ptr cs:[rax + rax]
.label_1982:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_1997
.label_2015:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_2042:
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r11
	mov	rbp, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	je	.label_2020
	jmp	.label_2000
.label_2027:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2020:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1998
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_1998
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_2040
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_2011:
	mov	rbp, rbp
	lea	rsi, [rax + r15]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	rdi, rsi
	sar	rdi, 1
	nop	
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	lea	rdi, [rdi]
	cmovge	rax, rdi
	mov	rbp, rbp
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	lea	rsi, [rsi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jl	.label_2011
.label_2040:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_1984
	cmp	r15, -1
	nop	
	je	.label_1984
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_1984
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_2025
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	mov	qword ptr [rsp + 0x68], rdx
	nop	
	mov	r10, rbx
	mov	qword ptr [rsp + 0xa8], r10
	mov	rbp, rbp
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	shl	qword ptr [rsp + 0xb0], 3
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_1994:
	mov	qword ptr [rsp + 0x90], r13
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	jne	.label_2045
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_1995
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2001
	nop	
	jmp	.label_1995
.label_2045:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_1995
.label_2001:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_1986:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_2016
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2019
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2030
	nop	dword ptr [rax]
.label_2019:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2030:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2016
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_2016
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_2016
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2044
	nop	dword ptr [rax]
.label_2033:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	nop	
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rdi, [rdi]
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jb	.label_2033
.label_2044:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_1999
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_1999
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_2012
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2014
.label_1999:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_2014
.label_2012:
	cmp	qword ptr [rsp], 0
	jne	.label_1989
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [r10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r10 + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x30], xmm2
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_2031
	mov	rbp, rbp
	mov	rbp, r10
	mov	qword ptr [rsp + 0x30], rbx
	shl	rbx, 3
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	nop	
	je	.label_2038
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_1989
.label_2031:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_1989:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rbx, r10
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	mov	r12d, 0xc
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	je	.label_2017
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rdx
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	r10, rbp
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2017
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_2041
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_2046
	nop	dword ptr [rax]
.label_2036:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1990
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_1993
	mov	rbp, rbp
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xbc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2017
	mov	rsp, rsp
	lea	rdi, [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0xbc]
	test	r12d, r12d
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp]
	je	.label_1993
	jmp	.label_2017
.label_1990:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_1993:
	inc	r13
	cmp	r13, rcx
	jl	.label_2036
.label_2046:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_2041:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_1983
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2009
	nop	
.label_2022:
	mov	rsp, rsp
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jb	.label_2022
.label_2009:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_2013
	nop	
	mov	rdi, -1
.label_2013:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_1983
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_1983
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_1983
	mov	rbp, rbp
	dec	r12
	lea	rdi, [rdx + 1]
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rbx, rdi
	nop	
	cmovge	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, rdx
	cmp	rbx, 4
	mov	rbp, rbp
	jb	.label_2007
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_2007
	mov	qword ptr [rsp + 0xa8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], r11
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	lea	rsi, [rsi]
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	nop	
	shr	r11, 2
	mov	rsp, rsp
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2043
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2043:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_2028
	mov	rbp, rbp
	cmp	r12, rdi
	lea	rsi, [rsi]
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	nop	
	lea	rsi, [rax + r10*8 + 0x38]
.label_2029:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsi - 0x28], xmm1
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	mov	rsp, rsp
	add	rdi, -8
	mov	rbp, rbp
	jne	.label_2029
.label_2028:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_1983
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2007:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_2007
.label_1983:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_2014:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_2016:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_1986
.label_1995:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_1994
.label_2017:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2006
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_2006:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_1998
	mov	rsp, rsp
	jmp	.label_2000
.label_1984:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_1998:
	xor	r12d, r12d
.label_2000:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1992:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_2000
.label_1981:
	mov	dword ptr [rsp + 0x10], eax
.label_2003:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_2000
.label_2025:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_1998
.label_2038:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_2017
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bde0

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
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2056
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_2056
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_2059
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2056
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_2061
.label_2059:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_2061:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2055:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_2058:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2053:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_2047
	nop	
	jl	.label_2052
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_2053
	nop	
	jmp	.label_2049
	nop	word ptr cs:[rax + rax]
.label_2052:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_2058
	jmp	.label_2049
	nop	dword ptr [rax]
.label_2047:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_2048
	nop	dword ptr [rax + rax]
.label_2057:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2054
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_2057
	mov	rbp, rbp
	jmp	.label_2048
.label_2054:
	test	rsi, rsi
	js	.label_2048
	cmp	rcx, rax
	je	.label_2063
	nop	dword ptr [rax + rax]
.label_2048:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2063:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2049
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_2055
.label_2049:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	jle	.label_2062
	nop	
	test	rax, rax
	js	.label_2062
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2064:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_2065:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_2050
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_2065
	jmp	.label_2060
.label_2050:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_2064
	mov	rbp, rbp
	jmp	.label_2051
.label_2062:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_2060:
	mov	rdx, r10
.label_2051:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_2056:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c040

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
	mov	qword ptr [rsp + 0x40], rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	nop	
	lea	rdx, [r15 + r15*2]
	mov	rsp, rsp
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2080
	lea	rsi, [rsi]
	lea	rax, [rcx + rdx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2077:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_2066
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2066
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	nop	
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	lea	rdi, [rdi]
	jl	.label_2069
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_2069:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_2082
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_2083
	nop	
.label_2088:
	mov	rbp, rbp
	lea	rbx, [rbp + rcx]
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	mov	rbp, rbp
	cmovl	rbp, rax
	nop	
	cmovge	rcx, rbx
	mov	rsp, rsp
	cmp	rbp, rcx
	jb	.label_2088
.label_2083:
	cmp	rbp, -1
	je	.label_2082
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2068
.label_2082:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_2068
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_2076
	nop	word ptr cs:[rax + rax]
.label_2067:
	lea	rax, [rcx + rbp]
	mov	rbp, rbp
	shr	rax, 1
	nop	
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rbp, rbp
	jb	.label_2067
.label_2076:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_2068
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_2090
.label_2068:
	test	r10, r10
	jle	.label_2066
	test	r9, r9
	mov	rsp, rsp
	jle	.label_2070
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_2073
	nop	word ptr cs:[rax + rax]
.label_2081:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	jb	.label_2081
.label_2073:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2070
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_2066
.label_2070:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_2066
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2093
	nop	word ptr cs:[rax + rax]
.label_2075:
	nop	
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	mov	rsp, rsp
	cmovge	rsi, rax
	cmp	rcx, rsi
	mov	rbp, rbp
	jb	.label_2075
.label_2093:
	cmp	rcx, -1
	je	.label_2066
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_2066
.label_2090:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	nop	
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	nop	
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2089
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_2066:
	inc	r13
	cmp	r13, r9
	jl	.label_2077
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_2080
	lea	r8, [rsp + 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r11, [r10 - 1]
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2072:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2086
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_2074
	nop	word ptr cs:[rax + rax]
.label_2084:
	lea	rdi, [rdi]
	lea	rdi, [rcx + rdx]
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rcx, rbx
	lea	rsi, [rsi]
	cmovge	rdx, rdi
	mov	rsp, rsp
	cmp	rcx, rdx
	jb	.label_2084
.label_2074:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2086
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_2087
.label_2086:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2087
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2092
	nop	word ptr cs:[rax + rax]
.label_2091:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	mov	rbp, rbp
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	nop	
	jb	.label_2091
.label_2092:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_2085
	nop	
	mov	rax, -1
.label_2085:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_2087
	cmp	r14, rax
	jle	.label_2087
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2087
	nop	
.label_2078:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2078
	nop	dword ptr [rax + rax]
.label_2087:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_2072
	jmp	.label_2079
.label_2080:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_2079:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2071:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2089:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2071
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c4e0

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
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	lea	rsi, [rsi]
	mov	r10, rsi
	mov	qword ptr [rsp + 0x18], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	mov	rbp, rbp
	xor	r14d, r14d
	test	rax, rax
	jle	.label_2103
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2104:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	mov	rsp, rsp
	shr	rbx, 0x3f
	add	rbx, rsi
	nop	
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2104
.label_2103:
	nop	
	cmp	r14, rax
	lea	rdi, [rdi]
	jge	.label_2095
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	lea	rdx, [r14 + r14*4]
	nop	
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2101
.label_2095:
	mov	r14, -1
.label_2101:
	nop	
	xor	r12d, r12d
	test	rax, rax
	nop	
	jle	.label_2106
	mov	rbp, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_2098:
	lea	rsi, [rdx + r12]
	lea	rsi, [rsi]
	mov	rbx, rsi
	shr	rbx, 0x3f
	mov	rbp, rbp
	add	rbx, rsi
	sar	rbx, 1
	nop	
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	mov	rsp, rsp
	cmovge	rdx, rbx
	lea	rsi, [rsi]
	lea	rsi, [rbx + 1]
	mov	rbp, rbp
	cmovl	r12, rsi
	lea	rdi, [rdi]
	cmp	r12, rdx
	jl	.label_2098
.label_2106:
	cmp	r12, rax
	jge	.label_2097
	mov	rax, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	lea	rdi, [rdi]
	je	.label_2100
.label_2097:
	nop	
	mov	r12, -1
.label_2100:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2107
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2105:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rsi*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	lea	rdi, [rdi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	mov	rsp, rsp
	cmp	r11, rcx
	mov	rbp, rbp
	jle	.label_2102
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_2094
.label_2102:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_2094
	nop	
	cmp	r11, rcx
	mov	rsp, rsp
	sete	bl
	nop	
	movzx	r8d, bl
	lea	rdi, [rdi]
	cmp	rsi, rcx
	mov	rsp, rsp
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2094
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rdx
	nop	
	mov	r8, r14
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	rbp, r10
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10 + 0x10]
	nop	
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rbp + rbp*4]
	nop	
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax + rax]
.label_2094:
	mov	rbp, rbp
	cmp	r11, r9
	jg	.label_2099
	lea	rdi, [rdi]
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_2099
	lea	rsi, [rsi]
	cmp	r11, r9
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rsp, rsp
	sete	bl
	mov	rbp, rbp
	movzx	ebp, bl
	mov	ebx, esi
	mov	rbp, rbp
	cmp	rax, r9
	sete	al
	movzx	esi, al
	mov	rsp, rsp
	add	esi, esi
	mov	rbp, rbp
	xor	r13d, r13d
	or	esi, ebp
	nop	
	je	.label_2099
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r10, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	r13d, eax
	nop	dword ptr [rax + rax]
.label_2099:
	nop	
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2096
	nop	
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_2105
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2096
.label_2107:
	xor	eax, eax
.label_2096:
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c820

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
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_2117
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3b], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x24], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2121:
	mov	rax, qword ptr [rsp + 8]
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
	je	.label_2111
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_2116
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_2112
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2112
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_2120:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_2113
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_2119
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x28], rax
	je	.label_2113
.label_2119:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_2108
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_2114
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_2109
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_2113
	lea	rdi, [rdi]
	jmp	.label_2118
.label_2114:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x3b], 0
	mov	rsp, rsp
	je	.label_2118
	xor	eax, eax
	cmp	dword ptr [rsp + 0x3c], 0
	nop	
	je	.label_2113
	mov	rbp, rbp
	jmp	.label_2109
.label_2118:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_2113:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_2120
	jmp	.label_2112
	nop	word ptr [rax + rax]
.label_2111:
	cmp	dword ptr [rsp + 0x3c], 0
	je	.label_2112
	xor	eax, eax
	jmp	.label_2115
	nop	dword ptr [rax + rax]
.label_2116:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x24], 0
	nop	
	je	.label_2112
	mov	eax, 0xffffffff
.label_2115:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_2109
.label_2112:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	jl	.label_2121
.label_2117:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_2110
.label_2108:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2110:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_2109:
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x41cad0

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
	jne	.label_2122
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_2123
	test	cl, cl
	mov	rsp, rsp
	jne	.label_2123
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_2123
.label_2122:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2123
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_2123:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41cb60

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_2124:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_2124
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_2125
	nop	dword ptr [rax + rax]
.label_2126:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_2125:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_2126
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_2128
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_2127
	xor	r8d, r8d
.label_2127:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_2126
.label_2128:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41cbe0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_2130:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_2129
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_2130
.label_2129:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41cc20

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
	ja	.label_2131
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
	jmp	.label_2132
.label_2131:
	mov	eax, ebx
.label_2132:
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
	.align	32
	#Procedure 0x41cc90

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
	.align	32
	#Procedure 0x41ccb0

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
	je	.label_2134
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2133
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_2135
.label_2133:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_2134
.label_2135:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_2134:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41cd00

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
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_2136
	nop	
	mov	rax, rcx
.label_2136:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41cd40

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
	#Procedure 0x41cd60

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
	js	.label_2137
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_2139
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
	je	.label_2137
.label_2139:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2137
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_2138
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_2138:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_2137:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x41ce10

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
	je	.label_2144
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
.label_2144:
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
	ja	.label_2157
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_2152
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_2151
	mov	rsp, rsp
	test	esi, esi
	jne	.label_2157
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_2150
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2142
.label_2157:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_2149
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_2151
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_2153
.label_2152:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_2148
.label_2151:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_2155
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2159
.label_2155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2159:
	mov	edx, dword ptr [rax]
.label_2156:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_2148:
	mov	ebp, eax
.label_2146:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_2153:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_2149
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_2154
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2143
.label_2149:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_2140
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_2145
.label_2150:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2142:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_2156
.label_2154:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2143:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_2158
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
	jns	.label_2147
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2147
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
	js	.label_2146
	lea	rsi, [rsi]
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_2141
.label_2147:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_2146
.label_2140:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_2145:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_2148
.label_2158:
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
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_2141:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_2146
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_2146
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_2160
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
	jne	.label_2146
.label_2160:
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
	jmp	.label_2146
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41d1e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2161
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_2161
	test	byte ptr [rbx + 1], 1
	je	.label_2161
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_2161:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x41d220

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