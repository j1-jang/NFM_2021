	.section	.text
	.align	16
	#Procedure 0x402770

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	mov	esi, OFFSET FLAT:label_24
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
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
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
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	mov	esi, OFFSET FLAT:label_28
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
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_20:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	.align	16
	#Procedure 0x402b40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	rbx, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_67
	call	setlocale
	mov	edi, OFFSET FLAT:label_71
	mov	esi, OFFSET FLAT:label_72
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_71
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp]
	call	cp_options_default
	mov	byte ptr [rsp + 0x14], 1
	mov	dword ptr [rsp + 4], 1
	mov	byte ptr [rsp + 0x15], 0
	mov	byte ptr [rsp + 0x16], 0
	mov	byte ptr [rsp + 0x17], 0
	mov	dword ptr [rsp + 8], 4
	mov	byte ptr [rsp + 0x18], 0
	mov	byte ptr [rsp + 0x19], 0
	mov	dword ptr [rsp + 0x38], 0
	mov	byte ptr [rsp + 0x22], 0
	mov	word ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x1c], 0
	mov	byte ptr [rsp + 0x29], 0
	mov	dword ptr [rsp + 0x25], 0
	mov	byte ptr [rsp + 0x23], 1
	mov	byte ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2a], 0
	mov	qword ptr [rsp + 0xc], 2
	mov	byte ptr [rsp + 0x2f], 0
	mov	dword ptr [rsp + 0x2b], 0
	mov	edi, OFFSET FLAT:label_82
	call	getenv
	test	rax, rax
	setne	byte ptr [rsp + 0x30]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x40], xmm0
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	ebp, ebp
	xor	ecx, ecx
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_43
.label_93:
	mov	byte ptr [rsp + 0x2a], 1
	mov	cl, r15b
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	r15d, ecx
	mov	edx, OFFSET FLAT:label_57
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, rbx
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x10b
	ja	.label_75
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_77]
.label_1667:
	mov	dword ptr [rsp + 4], 3
	mov	cl, r15b
	jmp	.label_43
.label_1672:
	cmp	qword ptr [rip + optarg],  0
	mov	cl, r15b
	je	.label_43
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
	mov	cl, r15b
	jmp	.label_43
.label_1673:
	mov	dword ptr [rsp + 4], 2
	mov	byte ptr [rsp + 0x22], 1
	mov	word ptr [rsp + 0x1d], 0x101
	mov	byte ptr [rsp + 0x1f], 1
	mov	byte ptr [rsp + 0x24], 1
	mov	byte ptr [rsp + 0x27], 1
	mov	byte ptr [rsp + 0x29], 1
	jmp	.label_93
.label_1674:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	cmovne	rbp, rax
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	cl, r15b
	jmp	.label_43
.label_1676:
	mov	byte ptr [rsp + 0x16], 1
	mov	cl, r15b
	jmp	.label_43
.label_1680:
	mov	byte ptr [rsp + 0x2c], 1
	mov	cl, r15b
	jmp	.label_43
.label_1681:
	test	r12, r12
	jne	.label_55
	mov	rsi, qword ptr [rip + optarg]
	lea	rdx, [rsp + 0x78]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_63
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x90]
	cmp	eax, 0x4000
	jne	.label_68
	mov	r12, qword ptr [rip + optarg]
	mov	cl, r15b
	jmp	.label_43
.label_1684:
	mov	byte ptr [rsp + 0x1c], 1
	mov	cl, r15b
	jmp	.label_43
.label_1688:
	mov	rdi, qword ptr [rip + optarg]
	test	rdi, rdi
	je	.label_79
	mov	qword ptr [rsp + 0x58], rbp
	mov	qword ptr [rsp + 0x60], r12
	mov	r13, rbx
	call	xstrdup
	mov	r12, rax
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_74:
	mov	rbx, rbp
	mov	esi, 0x2c
	mov	rdi, rbx
	call	strchr
	xor	ebp, ebp
	test	rax, rax
	je	.label_95
	mov	rbp, rax
	inc	rbp
	mov	byte ptr [rax], 0
.label_95:
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_94
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	rsi, rbx
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + decode_preserve_arg.preserve_vals]
	cmp	rax, 6
	ja	.label_44
	jmp	qword ptr [(rax * 8) + label_76]
.label_1539:
	mov	byte ptr [rsp + 0x1e], 1
	mov	byte ptr [rsp + 0x20], 0
	jmp	.label_50
.label_1540:
	mov	byte ptr [rsp + 0x1f], 1
	jmp	.label_50
.label_1541:
	mov	byte ptr [rsp + 0x1d], 1
	jmp	.label_50
.label_1542:
	mov	byte ptr [rsp + 0x22], 1
	jmp	.label_50
.label_1543:
	mov	word ptr [rsp + 0x25], 0x101
	jmp	.label_50
.label_1544:
	mov	word ptr [rsp + 0x27], 0x101
	jmp	.label_50
.label_1545:
	mov	byte ptr [rsp + 0x22], 1
	mov	dword ptr [rsp + 0x1d], 0x10101
	mov	byte ptr [rsp + 0x27], 1
	nop	word ptr cs:[rax + rax]
.label_50:
	test	rbp, rbp
	jne	.label_74
	mov	rdi, r12
	call	free
	mov	byte ptr [rsp + 0x24], 1
	mov	cl, r15b
	mov	rbx, r13
	jmp	.label_46
.label_79:
	mov	word ptr [rsp + 0x1d], 0x101
	mov	byte ptr [rsp + 0x1f], 1
	mov	byte ptr [rsp + 0x24], 1
	mov	cl, r15b
	jmp	.label_43
.label_1689:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_84
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_64
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + reflink_type]
	mov	dword ptr [rsp + 0x38], eax
	mov	cl, r15b
	jmp	.label_43
.label_1668:
	mov	dword ptr [rsp + 4], 4
	mov	cl, r15b
	jmp	.label_43
.label_1670:
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x70], rax
	mov	cl, r15b
	jmp	.label_43
.label_1671:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	mov	cl, r15b
	jmp	.label_43
.label_1675:
	mov	byte ptr [rsp + 0x22], 1
.label_1669:
	mov	dword ptr [rsp + 4], 2
	mov	cl, r15b
	jmp	.label_43
.label_1677:
	mov	dword ptr [rsp + 8], 3
	mov	cl, r15b
	jmp	.label_43
.label_1678:
	mov	byte ptr [rsp + 0x17], 1
	mov	cl, r15b
	jmp	.label_43
.label_1679:
	mov	dword ptr [rsp + 8], 2
	mov	cl, r15b
	jmp	.label_43
.label_1682:
	mov	byte ptr [rsp + 0x2d], 1
	mov	cl, r15b
	jmp	.label_43
.label_1683:
	mov	byte ptr [rsp + 0x2e], 1
	mov	cl, r15b
	jmp	.label_43
.label_1685:
	mov	byte ptr [rsp + 0x23], 0
	mov	cl, r15b
	jmp	.label_43
.label_1686:
	mov	qword ptr [rsp + 0x58], rbp
	mov	qword ptr [rsp + 0x60], r12
	mov	rdi, qword ptr [rip + optarg]
	call	xstrdup
	mov	rbp, rax
	mov	r12, rbp
	nop	dword ptr [rax]
.label_88:
	mov	r13, r12
	mov	esi, 0x2c
	mov	rdi, r13
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_86
	mov	r12, rax
	inc	r12
	mov	byte ptr [rax], 0
.label_86:
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_90
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	rsi, r13
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + decode_preserve_arg.preserve_vals]
	cmp	rax, 6
	ja	.label_99
	jmp	qword ptr [(rax * 8) + label_45]
.label_1547:
	mov	byte ptr [rsp + 0x1e], 0
	mov	byte ptr [rsp + 0x20], 1
	jmp	.label_48
.label_1551:
	mov	word ptr [rsp + 0x25], 0
	jmp	.label_48
.label_1548:
	mov	byte ptr [rsp + 0x1f], 0
	jmp	.label_48
.label_1549:
	mov	byte ptr [rsp + 0x1d], 0
	jmp	.label_48
.label_1550:
	mov	byte ptr [rsp + 0x22], 0
	jmp	.label_48
.label_1552:
	mov	word ptr [rsp + 0x27], 0
	jmp	.label_48
.label_1553:
	mov	byte ptr [rsp + 0x22], 0
	mov	dword ptr [rsp + 0x1d], 0x1000000
	mov	byte ptr [rsp + 0x27], 0
	nop	word ptr cs:[rax + rax]
.label_48:
	test	r12, r12
	jne	.label_88
	mov	rdi, rbp
	call	free
	mov	cl, r15b
.label_46:
	mov	r12, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	jmp	.label_43
.label_1687:
	mov	byte ptr [rip + parents_option],  1
	mov	cl, r15b
	jmp	.label_43
.label_1690:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_78
	mov	edx, OFFSET FLAT:sparse_type_string
	mov	ecx, OFFSET FLAT:sparse_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + sparse_type]
	mov	dword ptr [rsp + 0xc], eax
	mov	cl, r15b
	jmp	.label_43
.label_1691:
	mov	byte ptr [rip + remove_trailing_slashes],  1
	mov	cl, r15b
	jmp	.label_43
.label_1692:
	mov	byte ptr [rsp + 0x15], 1
	mov	cl, r15b
	jmp	.label_43
.label_84:
	mov	dword ptr [rsp + 0x38], 2
	mov	cl, r15b
	jmp	.label_43
.label_1666:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_101
	mov	al, byte ptr [rsp + 0x2c]
	test	al, al
	jne	.label_42
.label_101:
	mov	rax, qword ptr [rsp + 8]
	cmp	eax, 2
	jne	.label_47
	mov	byte ptr [rsp + 0x2d], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	setne	cl
	je	.label_49
	cmp	eax, 2
	jne	.label_49
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	jmp	.label_52
.label_47:
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	setne	cl
.label_49:
	cmp	dword ptr [rsp + 0x38], 2
	jne	.label_58
	movabs	rdx, 0xffffffff00000000
	and	rax, rdx
	movabs	rdx, 0x200000000
	cmp	rax, rdx
	jne	.label_59
.label_58:
	xor	eax, eax
	test	cl, cl
	je	.label_69
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbp
	call	xget_version
.label_69:
	mov	dword ptr [rsp], eax
	mov	rdi, qword ptr [rsp + 0x70]
	call	set_simple_backup_suffix
	mov	al, byte ptr [rsp + 0x2a]
	cmp	dword ptr [rsp + 4], 1
	jne	.label_80
	test	al, al
	je	.label_92
	mov	cl, byte ptr [rsp + 0x17]
	test	cl, cl
	jne	.label_92
	mov	dword ptr [rsp + 4], 2
	jmp	.label_80
.label_92:
	mov	dword ptr [rsp + 4], 4
.label_80:
	test	al, al
	je	.label_87
	mov	byte ptr [rsp + 0x14], r15b
.label_87:
	mov	al, byte ptr [rsp + 0x21]
	test	al, al
	je	.label_89
	cmp	byte ptr [rsp + 0x26], 0
	jne	.label_91
	mov	byte ptr [rsp + 0x25], 0
.label_91:
	cmp	byte ptr [rsp + 0x25], 0
	je	.label_89
	test	al, al
	jne	.label_96
.label_89:
	cmp	byte ptr [rsp + 0x26], 0
	jne	.label_97
	cmp	byte ptr [rsp + 0x28], 0
	jne	.label_100
	call	hash_init
	movsxd	rax, dword ptr [rip + optind]
	sub	r14d, eax
	lea	rsi, [rbx + rax*8]
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	setne	cl
	lea	r8, [rsp]
	mov	edi, r14d
	mov	rdx, r12
	call	do_copy
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_99:
	call	abort
.label_44:
	call	abort
.label_1664:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_30
	mov	edx, OFFSET FLAT:label_12
	mov	r8d, OFFSET FLAT:label_60
	mov	r9d, OFFSET FLAT:label_61
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_62
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_1665:
	xor	edi, edi
	call	usage
.label_75:
	mov	edi, 1
	call	usage
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	jmp	.label_66
.label_63:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	jmp	.label_52
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
.label_52:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	jmp	.label_66
.label_100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	jmp	.label_66
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
.label_66:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	qword ptr [rbp - 0x38], rsi
	mov	ebx, edi
	mov	byte ptr [rbp - 0x29], 0
	mov	r13b, 1
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_127
	cmp	byte ptr [r14 + 0x16], 0
	setne	r13b
.label_127:
	xor	eax, eax
	test	rdx, rdx
	sete	al
	cmp	eax, ebx
	jge	.label_136
	test	cl, cl
	mov	rax, r14
	mov	qword ptr [rbp - 0x40], rax
	je	.label_138
	test	rdx, rdx
	jne	.label_140
	cmp	ebx, 3
	jge	.label_141
	movsxd	rax, ebx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r14, qword ptr [rcx + rax*8 - 8]
	lea	rdx, [rbp - 0xf8]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	je	.label_107
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	r15d, r15d
	je	.label_107
	cmp	r15d, 2
	jne	.label_116
	mov	byte ptr [rbp - 0x29], 1
	mov	r13b, 1
	jmp	.label_113
.label_138:
	test	rdx, rdx
	jne	.label_117
	cmp	ebx, 2
	jl	.label_107
	mov	dword ptr [rbp - 0x30], ebx
	movsxd	r12, ebx
	mov	rax, qword ptr [rbp - 0x38]
	mov	r14, qword ptr [rax + r12*8 - 8]
	dec	r12
	lea	rdx, [rbp - 0xf8]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	je	.label_120
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	r15d, r15d
	je	.label_120
	cmp	r15d, 2
	jne	.label_124
	mov	byte ptr [rbp - 0x29], 1
	mov	r13b, 1
	jmp	.label_132
.label_116:
	test	r13b, r13b
	je	.label_129
	mov	dword ptr [rbp - 0xe0], 0
.label_107:
	xor	r13d, r13d
.label_113:
	cmp	byte ptr [rip + parents_option],  1
	je	.label_133
	mov	rax, qword ptr [rbp - 0x38]
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	byte ptr [rax + 0x16], 0
	je	.label_103
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_103
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	jne	.label_103
	test	r13b, r13b
	jne	.label_103
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xe0]
	cmp	eax, 0x8000
	jne	.label_103
	mov	edi, 0xffffff9c
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0x40]
	movups	xmm0, xmmword ptr [rax + 0x40]
	movups	xmmword ptr [rip + label_109],  xmm0
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 0x10]
	movups	xmm2, xmmword ptr [rax + 0x20]
	movups	xmm3, xmmword ptr [rax + 0x30]
	movups	xmmword ptr [rip + label_110],  xmm3
	movups	xmmword ptr [rip + label_111],  xmm2
	movups	xmmword ptr [rip + label_112],  xmm1
	movups	xmmword ptr [rip + do_copy.x_tmp],  xmm0
	mov	eax, OFFSET FLAT:do_copy.x_tmp
	mov	qword ptr [rbp - 0x40], rax
	mov	dword ptr [rip + do_copy.x_tmp],  0
.label_103:
	lea	r8, [rbp - 0x50]
	xor	edx, edx
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, qword ptr [rbp - 0x40]
	call	copy
	mov	r12d, eax
	jmp	.label_123
.label_120:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xe0]
	cmp	eax, 0x4000
	jne	.label_125
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rax + r12*8]
	test	rdx, rdx
	je	.label_107
	mov	ebx, dword ptr [rbp - 0x30]
	dec	ebx
	mov	r14, qword ptr [rbp - 0x40]
.label_117:
	cmp	ebx, 2
	mov	qword ptr [rbp - 0x58], rdx
	jl	.label_135
	mov	rdi, r14
	call	dest_info_init
	mov	rdi, r14
	call	src_info_init
	jmp	.label_137
.label_135:
	mov	r12b, 1
	cmp	ebx, 1
	jne	.label_123
.label_137:
	mov	r12b, 1
	xor	r13d, r13d
	mov	dword ptr [rbp - 0x30], ebx
	jmp	.label_108
.label_139:
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrdup
	jmp	.label_102
	nop	word ptr [rax + rax]
.label_108:
	mov	qword ptr [rbp - 0x60], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	r15, qword ptr [rax + r13*8]
	cmp	byte ptr [rip + remove_trailing_slashes],  1
	jne	.label_104
	mov	rdi, r15
	call	strip_trailing_slashes
.label_104:
	mov	byte ptr [rbp - 0x2a], r12b
	mov	al, byte ptr [rip + parents_option]
	test	al, al
	je	.label_115
	mov	rdi, r15
	call	strlen
	mov	rbx, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r15
	call	memcpy
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x60]
	call	file_name_concat
	mov	rbx, r15
	mov	r15, rax
	mov	rsi, qword ptr [rbp - 0x60]
	sub	rsi, r15
	xor	r12d, r12d
	cmp	byte ptr [r14 + 0x2e], 0
	mov	edx, 0
	mov	eax, OFFSET FLAT:label_122
	cmovne	rdx, rax
	mov	rdi, r15
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x29]
	mov	r9, r14
	call	make_dir_parents_private
	test	al, al
	jne	.label_130
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	qword ptr [rbp - 0x68], r15
	mov	rdi, r15
	call	last_component
	mov	r15, rax
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	r14, rsp
	lea	rdx, [rbx + 1]
	add	rbx, 0x10
	and	rbx, 0xfffffffffffffff0
	mov	r12, r14
	sub	r12, rbx
	mov	rsp, r12
	neg	rbx
	mov	rdi, r12
	mov	rsi, r15
	call	memcpy
	mov	rdi, r12
	call	strip_trailing_slashes
	cmp	byte ptr [r14 + rbx], 0x2e
	jne	.label_106
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_106
	cmp	byte ptr [r12 + 2], 0
	je	.label_139
	nop	word ptr cs:[rax + rax]
.label_106:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, r12
	call	file_name_concat
.label_102:
	mov	r15, rax
	mov	r14, qword ptr [rbp - 0x40]
	mov	rbx, qword ptr [rbp - 0x68]
.label_130:
	movzx	edx, byte ptr [rbp - 0x29]
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rsi, r15
	mov	rcx, r14
	lea	r8, [rbp - 0x41]
	call	copy
	mov	r12b, al
	and	r12b, byte ptr [rbp - 0x2a]
	cmp	byte ptr [rip + parents_option],  1
	jne	.label_119
	mov	rsi, qword ptr [rbp - 0x60]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, r15
	mov	rcx, r14
	call	re_protect
	and	al, r12b
	mov	r12b, al
.label_119:
	cmp	byte ptr [rip + parents_option],  1
	jne	.label_126
	mov	rdi, qword ptr [rbp - 0x50]
	test	rdi, rdi
	je	.label_126
.label_131:
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rbp - 0x50], rbx
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_131
.label_126:
	mov	rdi, r15
	call	free
	inc	r13
	mov	ebx, dword ptr [rbp - 0x30]
	cmp	r13d, ebx
	jne	.label_108
.label_123:
	mov	eax, r12d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_124:
	test	r13b, r13b
	je	.label_129
	mov	dword ptr [rbp - 0xe0], 0
.label_125:
	xor	r13d, r13d
.label_132:
	cmp	dword ptr [rbp - 0x30], 3
	jl	.label_113
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + r12*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_136:
	xor	edi, edi
	test	ebx, ebx
	jg	.label_134
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_133:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_140:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_134:
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	r13, rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r12
	call	dir_len
	mov	r15, rax
	lea	rax, [r15 + 0x10]
	and	rax, 0xfffffffffffffff0
	mov	rbx, rsp
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r15 + rbx], 0
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [r13], 0
	lea	rdx, [rbp - 0xe0]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_148
	lea	rax, [r12 + r14]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [r12 + r14 - 1]
	nop	word ptr cs:[rax + rax]
.label_156:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_156
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_157
	nop	word ptr cs:[rax + rax]
.label_152:
	mov	byte ptr [r15], 0
	mov	edi, 1
	mov	rsi, r12
	lea	rdx, [rbp - 0xe0]
	call	__xstat
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_166
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_166
	mov	rax, qword ptr [rbp - 0x30]
	movzx	eax, word ptr [rax + 0x1e]
	test	al, al
	jne	.label_166
	xor	edx, edx
	movzx	eax, ax
	cmp	eax, 0x100
	jb	.label_149
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdx, [rbp - 0x170]
	call	__xstat
	test	eax, eax
	je	.label_177
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_164
	jmp	.label_142
	nop	dword ptr [rax]
.label_177:
	mov	eax, dword ptr [rbp - 0x158]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	ebx, 0x14
	cmp	eax, 0x4000
	jne	.label_142
.label_164:
	mov	edi, 0xa8
	call	xmalloc
	mov	r13, rax
	mov	edx, 0x90
	mov	rdi, r13
	lea	rsi, [rbp - 0x170]
	call	memcpy
	mov	rax, r15
	sub	rax, r12
	mov	qword ptr [r13 + 0x98], rax
	mov	byte ptr [r13 + 0x90], 0
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r13 + 0xa0], rax
	mov	qword ptr [rcx], r13
	test	r14d, r14d
	je	.label_159
	mov	edx, dword ptr [r13 + 0x18]
	jmp	.label_149
	nop	
.label_159:
	xor	edx, edx
.label_149:
	xor	ecx, ecx
	test	r14d, r14d
	setne	cl
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r12
	mov	r8, qword ptr [rbp - 0x30]
	call	set_process_security_ctx
	test	al, al
	je	.label_161
	test	r14d, r14d
	je	.label_163
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	eax, dword ptr [r13 + 0x18]
	mov	ebx, 0x3f
	mov	r14, qword ptr [rbp - 0x30]
	cmp	byte ptr [r14 + 0x1d], 0
	jne	.label_167
	cmp	byte ptr [r14 + 0x1e], 0
	mov	ebx, 0
	mov	ecx, 0x12
	cmovne	ebx, ecx
.label_167:
	and	ebx, eax
	cmp	byte ptr [r14 + 0x20], 0
	mov	ecx, 0x1ff
	cmovne	eax, ecx
	mov	esi, ebx
	xor	esi, 0xfff
	and	esi, eax
	mov	rdi, r12
	call	mkdir
	test	eax, eax
	jne	.label_160
	mov	rsi, qword ptr [rbp - 0x48]
	test	rsi, rsi
	je	.label_178
	mov	edi, 1
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, r12
	call	__printf_chk
.label_178:
	mov	edi, 1
	mov	rsi, r12
	lea	rdx, [rbp - 0xe0]
	call	__lxstat
	test	eax, eax
	jne	.label_146
	cmp	byte ptr [r14 + 0x1e], 0
	jne	.label_147
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, eax
	not	ecx
	test	ebx, ecx
	je	.label_150
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	eax, dword ptr [rbp - 0xc8]
.label_150:
	mov	ecx, eax
	not	ecx
	test	ebx, ecx
	jne	.label_155
	mov	ecx, eax
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	je	.label_147
.label_155:
	or	eax, ebx
	mov	dword ptr [r13 + 0x18], eax
	mov	byte ptr [r13 + 0x90], 1
	nop	word ptr cs:[rax + rax]
.label_147:
	mov	esi, dword ptr [rbp - 0xc8]
	mov	eax, esi
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_143
	or	esi, 0x1c0
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_169
.label_143:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	jne	.label_144
	jmp	.label_170
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	mov	r14, qword ptr [rbp - 0x30]
	jne	.label_171
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_170:
	mov	al, byte ptr [r14 + 0x25]
	cmp	byte ptr [r14 + 0x21], 0
	jne	.label_176
	test	al, al
	mov	al, 1
	je	.label_144
.label_176:
	movzx	esi, al
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r14
	call	set_file_security_ctx
	test	al, al
	jne	.label_144
	cmp	byte ptr [r14 + 0x26], 0
	jne	.label_151
.label_144:
	mov	byte ptr [r15], 0x2f
	nop	word ptr [rax + rax]
.label_145:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_145
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_152
	jmp	.label_153
.label_148:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xc8]
	cmp	eax, 0x4000
	jne	.label_154
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_153:
	mov	r13b, 1
	jmp	.label_157
.label_154:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_162
.label_161:
	xor	r13d, r13d
	jmp	.label_157
.label_142:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_162:
	mov	rdx, r14
	jmp	.label_173
.label_160:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	jmp	.label_175
.label_146:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	jmp	.label_175
.label_171:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_172
.label_169:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
.label_175:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_172:
	mov	rdx, rbx
.label_173:
	call	error
.label_157:
	mov	eax, r13d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_151:
	xor	r13d, r13d
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl re_protect
	.type re_protect, @function
re_protect:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, r14
	call	memcpy
	mov	al, 1
	test	rbx, rbx
	je	.label_180
	add	r13, r12
	lea	r14, [rbp - 0x50]
	nop	word ptr cs:[rax + rax]
.label_185:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_187
	movups	xmm0, xmmword ptr [rbx + 0x48]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movups	xmm0, xmmword ptr [rbx + 0x58]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	rdi, r12
	mov	rsi, r14
	call	utimens
	test	eax, eax
	jne	.label_182
.label_187:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_181
	mov	esi, dword ptr [rbx + 0x1c]
	mov	edx, dword ptr [rbx + 0x20]
	mov	rdi, r12
	call	lchown
	test	eax, eax
	je	.label_181
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_190
	mov	edx, dword ptr [rbx + 0x20]
	mov	esi, 0xffffffff
	mov	rdi, r12
	call	lchown
.label_181:
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_183
	mov	r8d, dword ptr [rbx + 0x18]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r12
	call	copy_acl
	test	eax, eax
	je	.label_179
	jmp	.label_191
	nop	dword ptr [rax + rax]
.label_183:
	cmp	byte ptr [rbx + 0x90], 0
	je	.label_179
	mov	esi, dword ptr [rbx + 0x18]
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_184
.label_179:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0x2f
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	jne	.label_185
	mov	al, 1
	jmp	.label_180
.label_182:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	jmp	.label_189
.label_190:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	jmp	.label_189
.label_184:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
.label_189:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_191:
	xor	eax, eax
.label_180:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x404030

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	r15
	push	r14
	push	rbx
	mov	rbx, r8
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_196
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_193
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_194
.label_193:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r15
	call	error
	cmp	byte ptr [rbx + 0x26], 0
	sete	bl
	jmp	.label_195
.label_196:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_195
	xor	cl, 1
	jne	.label_195
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	jmp	.label_195
.label_194:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	bl, 1
.label_195:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_198
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_201
.label_198:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_199
.label_201:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_199:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404140

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl src_info_init
	.type src_info_init, @function
src_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041a0

	.globl copy
	.type copy, @function
copy:
	push	rbx
	sub	rsp, 0x10
	mov	r11, r9
	mov	r10, r8
	mov	rax, rcx
	mov	qword ptr [rip + top_level_src_name],  rdi
	mov	qword ptr [rip + top_level_dst_name],  rsi
	mov	byte ptr [rsp + 0xf], 0
	lea	rbx, [rsp + 0xf]
	movzx	edx, dl
	mov	ecx, 0
	mov	r8d, 0
	mov	r9, rax
	push	r11
	push	r10
	push	rbx
	push	1
	call	copy_internal
	add	rsp, 0x30
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3a8
	mov	r14, r9
	mov	qword ptr [rbp - 0x80], r8
	mov	qword ptr [rbp - 0xb8], rcx
	mov	ecx, edx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 0
	mov	r15d, dword ptr [r14 + 0x34]
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_330
	test	r15d, r15d
	jns	.label_320
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, rbx
	mov	rcx, r12
	call	renameatu
	xor	r15d, r15d
	test	eax, eax
	je	.label_320
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_320:
	test	r15d, r15d
	sete	cl
	test	r13, r13
	je	.label_330
	mov	byte ptr [r13], cl
.label_330:
	mov	qword ptr [rbp - 0x48], rbx
	mov	qword ptr [rbp - 0x30], r12
	test	r15d, r15d
	je	.label_335
	cmp	r15d, 0x11
	jne	.label_338
	cmp	dword ptr [r14 + 8], 2
	jne	.label_338
	jmp	.label_340
.label_335:
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_340
.label_338:
	mov	r13, rcx
	test	r15d, r15d
	mov	rbx, qword ptr [rbp - 0x48]
	cmove	rbx, qword ptr [rbp - 0x30]
	cmp	dword ptr [r14 + 4], 2
	jne	.label_342
	lea	rdx, [rbp - 0x188]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	jmp	.label_353
.label_342:
	lea	rdx, [rbp - 0x188]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
.label_353:
	test	eax, eax
	je	.label_355
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
.label_346:
	call	error
.label_218:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_355:
	mov	r12d, dword ptr [rbp - 0x170]
	mov	eax, r12d
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_369
	cmp	byte ptr [r14 + 0x2a], 0
	mov	rcx, r13
	jne	.label_340
	cmp	byte ptr [r14 + 0x19], 0
	je	.label_376
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	jmp	.label_379
.label_369:
	mov	rcx, r13
.label_340:
	mov	bl, byte ptr [rbp + 0x10]
	test	bl, bl
	je	.label_384
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_384
	mov	eax, r12d
	and	eax, 0xf000
	mov	r13, rcx
	cmp	eax, 0x4000
	je	.label_388
	cmp	dword ptr [r14], 0
	jne	.label_388
	lea	rdx, [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x48]
	call	seen_file
	test	al, al
	je	.label_400
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_520
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r14b, 1
	jmp	.label_218
.label_400:
	mov	rdi, qword ptr [r14 + 0x48]
.label_388:
	lea	rdx, [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x48]
	call	record_file
	mov	rcx, r13
.label_384:
	mov	eax, dword ptr [r14 + 4]
	mov	dl, 1
	cmp	eax, 4
	je	.label_414
	cmp	eax, 3
	sete	dl
	and	dl, bl
.label_414:
	mov	byte ptr [rbp - 0x98], dl
	xor	r13d, r13d
	xor	ebx, ebx
	test	cl, cl
	mov	dword ptr [rbp - 0x3c], r12d
	jne	.label_417
	cmp	r15d, 0x11
	jne	.label_423
	cmp	dword ptr [r14 + 8], 2
	jne	.label_423
	xor	ebx, ebx
	jmp	.label_425
.label_423:
	mov	eax, r12d
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_427
	mov	bl, 1
	cmp	byte ptr [r14 + 0x14], 0
	je	.label_428
	cmp	eax, 0xa000
	je	.label_428
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_428
.label_427:
	mov	bl, 1
	cmp	byte ptr [r14 + 0x18], 0
	jne	.label_428
	cmp	byte ptr [r14 + 0x2c], 0
	jne	.label_428
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_428
	cmp	dword ptr [r14], 0
	jne	.label_428
	cmp	byte ptr [r14 + 0x15], 0
	setne	bl
.label_428:
	movzx	r8d, bl
	shl	r8d, 8
	lea	rcx, [rbp - 0x2b0]
	mov	edi, 1
	mov	esi, 0xffffff9c
	mov	rdx, qword ptr [rbp - 0x30]
	call	__fxstatat
	test	eax, eax
	je	.label_425
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	cl, 1
	cmp	ebx, 2
	je	.label_441
	cmp	ebx, 0x28
	jne	.label_442
	cmp	byte ptr [r14 + 0x16], 0
	je	.label_442
	xor	ecx, ecx
.label_441:
	xor	ebx, ebx
	cmp	r15d, 0x11
	mov	r13d, 0
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_417
	jmp	.label_445
.label_425:
	xor	ecx, ecx
.label_445:
	mov	qword ptr [rbp - 0x50], rcx
	cmp	dword ptr [r14 + 8], 2
	mov	qword ptr [rbp - 0x78], rbx
	jne	.label_446
	xor	r15d, r15d
	jmp	.label_208
.label_446:
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x2a8]
	jne	.label_453
	mov	r13, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x2b0]
	mov	r12, qword ptr [rbp - 0x30]
	jne	.label_458
	mov	r15b, 1
	mov	rbx, r14
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_210
	jmp	.label_468
.label_442:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
.label_489:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	jmp	.label_346
.label_453:
	mov	r13, qword ptr [rbp - 0x48]
	mov	rbx, r14
	xor	r15d, r15d
	mov	r12, qword ptr [rbp - 0x30]
	jmp	.label_468
.label_458:
	mov	rbx, r14
	xor	r15d, r15d
.label_468:
	cmp	dword ptr [rbx + 4], 2
	jne	.label_482
	mov	eax, dword ptr [rbp - 0x170]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	rsi, [rbp - 0x188]
	lea	r14, [rbp - 0x2b0]
	cmp	ecx, 0xa000
	jne	.label_238
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x298]
	cmp	ecx, 0xa000
	jne	.label_238
	mov	rdi, r13
	mov	rsi, r12
	call	same_name
	test	al, al
	jne	.label_226
	mov	r14, rbx
	cmp	dword ptr [r14], 0
	jne	.label_231
	test	r15b, r15b
	je	.label_497
	cmp	byte ptr [r14 + 0x18], 0
	mov	r15b, 1
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_226
	jmp	.label_208
.label_482:
	test	r15b, r15b
	je	.label_231
	lea	r14, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, r12
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	jne	.label_231
	lea	r15, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_231
	mov	rcx, r15
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x218]
	jne	.label_513
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x220]
	sete	r15b
	jmp	.label_514
.label_376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
.label_379:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	r14d, r14d
.label_532:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_521
.label_513:
	xor	r15d, r15d
.label_514:
	mov	rsi, rcx
	mov	eax, dword ptr [rbp - 0x3b8]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_238
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x208]
	cmp	ecx, 0xa000
	jne	.label_238
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_231
.label_238:
	mov	rdx, rbx
	mov	rcx, qword ptr [rdx]
	test	ecx, ecx
	je	.label_276
	mov	rbx, rdx
	test	r15b, r15b
	je	.label_284
	mov	rdi, r13
	mov	rsi, r12
	call	same_name
	test	al, al
	mov	r14, rbx
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_226
	xor	r15d, r15d
	jmp	.label_208
.label_276:
	mov	rbx, rdx
	cmp	byte ptr [rdx + 0x18], 0
	jne	.label_550
	cmp	byte ptr [rbx + 0x15], 0
	je	.label_349
.label_550:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x18]
	cmp	ecx, 0xa000
	je	.label_231
	test	r15b, r15b
	je	.label_349
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_349
	mov	r15, rsi
	mov	rdi, r13
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_557
	mov	rsi, r15
	mov	eax, dword ptr [rsi + 0x18]
.label_349:
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_559
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	je	.label_559
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [r14 + 8]
	jne	.label_231
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [r14]
	jne	.label_231
	mov	r15b, 1
	cmp	byte ptr [rbx + 0x17], 0
	jne	.label_210
.label_559:
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_564
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x170]
	cmp	eax, 0xa000
	jne	.label_564
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_564
	mov	rdi, r13
	mov	r15, rsi
	call	canonicalize_file_name
	mov	rsi, r15
	mov	r15, rax
	test	r15, r15
	je	.label_564
	mov	rdi, r15
	mov	rsi, r12
	call	same_name
	mov	r14d, eax
	mov	rdi, r15
	call	free
	test	r14b, r14b
	mov	r14, rbx
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_226
	xor	r15d, r15d
	jmp	.label_208
.label_284:
	and	eax, 0xf000
	xor	r15d, r15d
	cmp	eax, 0xa000
	jne	.label_210
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	je	.label_210
	mov	al, byte ptr [rbx + 0x18]
	test	al, al
	jne	.label_210
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_226
	jmp	.label_231
.label_564:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_341
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	je	.label_231
.label_341:
	cmp	dword ptr [rbx + 4], 2
	jne	.label_226
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_386
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	jne	.label_231
	jmp	.label_250
.label_497:
	xor	r15d, r15d
	jmp	.label_251
.label_557:
	mov	r14, rbx
	cmp	byte ptr [r14 + 0x18], 0
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_226
	xor	r15d, r15d
	jmp	.label_208
.label_386:
	lea	rdi, [rbp - 0x3d0]
	mov	edx, 0x90
	call	memcpy
.label_250:
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_262
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, r12
	call	__xstat
	test	eax, eax
	jne	.label_231
	jmp	.label_271
.label_262:
	lea	rdi, [rbp - 0x220]
	mov	edx, 0x90
	mov	rsi, r14
	call	memcpy
.label_271:
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x218]
	jne	.label_231
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x220]
	jne	.label_231
	cmp	byte ptr [rbx + 0x17], 0
	je	.label_226
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	setne	r15b
	jmp	.label_210
.label_231:
	xor	r15d, r15d
.label_210:
	mov	r14, rbx
.label_251:
	mov	r12d, dword ptr [rbp - 0x3c]
.label_208:
	mov	ebx, r12d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	mov	r12, qword ptr [rbp - 0x30]
	mov	r13, qword ptr [rbp + 0x28]
	je	.label_287
	mov	al, byte ptr [r14 + 0x2d]
	test	al, al
	je	.label_287
	cmp	byte ptr [r14 + 0x1f], 0
	je	.label_296
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_297
	mov	rax, qword ptr [rbp - 0x2b0]
	cmp	rax, qword ptr [rbp - 0x188]
	sete	al
	jmp	.label_299
.label_296:
	xor	eax, eax
	jmp	.label_302
.label_297:
	xor	eax, eax
.label_299:
	xor	al, 1
.label_302:
	movzx	ecx, al
	lea	rsi, [rbp - 0x2b0]
	lea	rdx, [rbp - 0x188]
	mov	rdi, r12
	call	utimecmp
	test	eax, eax
	js	.label_287
	mov	qword ptr [rbp - 0x38], r14
	test	r13, r13
	je	.label_385
	mov	byte ptr [r13], 1
.label_385:
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdi, r12
	call	remember_copied
	mov	rsi, rax
	mov	r14b, 1
	test	rsi, rsi
	je	.label_218
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, byte ptr [rax + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x98]
	mov	edx, 1
	mov	rdi, rsi
	mov	rbx, rsi
	mov	rsi, r12
	call	create_hard_link
	mov	rdx, rbx
	xor	r13d, r13d
	test	al, al
	jne	.label_218
	jmp	.label_217
.label_287:
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_326
	mov	r13, r14
	mov	eax, dword ptr [r14 + 8]
	cmp	eax, 2
	je	.label_328
	cmp	eax, 3
	je	.label_333
	cmp	eax, 4
	jne	.label_214
	cmp	byte ptr [r13 + 0x2f], 0
	je	.label_214
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0xa000
	je	.label_214
	call	can_write_any_file
	test	al, al
	jne	.label_214
	mov	esi, 2
	mov	rdi, r12
	call	euidaccess
	test	eax, eax
	je	.label_214
.label_333:
	lea	rdx, [rbp - 0x2b0]
	mov	rdi, r13
	mov	rsi, r12
	call	overwrite_ok
	test	al, al
	jne	.label_214
.label_328:
	mov	r14b, 1
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_218
	mov	byte ptr [rax], 1
	jmp	.label_218
.label_326:
	mov	r13, r14
	cmp	ebx, 0x4000
	je	.label_214
	mov	eax, dword ptr [r13 + 8]
	mov	r14b, 1
	cmp	eax, 2
	je	.label_218
	cmp	eax, 3
	jne	.label_214
	lea	rdx, [rbp - 0x2b0]
	mov	rdi, r13
	mov	rsi, r12
	call	overwrite_ok
	test	r15b, r15b
	jne	.label_218
	test	al, al
	jne	.label_365
	jmp	.label_218
.label_214:
	mov	r14b, 1
	test	r15b, r15b
	jne	.label_218
.label_365:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	mov	r14, r13
	mov	r13, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [rbp - 0x30]
	je	.label_371
	cmp	ebx, 0x4000
	jne	.label_377
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_382
	cmp	dword ptr [r14], 0
	je	.label_382
.label_377:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_371
	cmp	dword ptr [r14], 3
	je	.label_371
	mov	rdi, qword ptr [r14 + 0x40]
	lea	rdx, [rbp - 0x2b0]
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_371
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
	jmp	.label_478
.label_371:
	cmp	ebx, 0x4000
	je	.label_399
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	jne	.label_399
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_374
	cmp	dword ptr [r14], 0
	je	.label_374
.label_399:
	mov	bl, byte ptr [r14 + 0x18]
	test	bl, bl
	je	.label_407
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x170]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_407
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	je	.label_407
	cmp	dword ptr [r14], 0
	je	.label_413
.label_407:
	mov	r13, r14
	mov	r14, qword ptr [r14]
	test	r14d, r14d
	je	.label_272
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	r15, rax
	cmp	byte ptr [r15], 0x2e
	jne	.label_420
	xor	eax, eax
	cmp	byte ptr [r15 + 1], 0x2e
	sete	al
	mov	al, byte ptr [r15 + rax + 1]
	test	al, al
	je	.label_272
	cmp	al, 0x2f
	je	.label_272
.label_420:
	test	bl, bl
	jne	.label_426
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	jne	.label_426
.label_272:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	mov	r15d, 0x11
	cmp	eax, 0x4000
	jne	.label_429
	mov	r14, r13
	mov	r12d, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x50]
	xor	r13d, r13d
	jmp	.label_260
.label_226:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
	jmp	.label_434
.label_426:
	cmp	r14d, 3
	je	.label_233
	mov	rdi, r15
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, r12
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	rdi, qword ptr [rip + simple_backup_suffix]
	mov	qword ptr [rbp - 0x68], rdi
	call	strlen
	mov	qword ptr [rbp - 0x60], rax
	lea	rax, [rax + r14]
	cmp	qword ptr [rbp - 0x50], rax
	jne	.label_233
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_233
	add	r15, r14
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x68]
	call	strcmp
	test	eax, eax
	jne	.label_233
	mov	rdi, r12
	call	strlen
	mov	r14, rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rax + r14 + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rcx, -1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	__mempcpy_chk
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdi, rax
	call	strcpy
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	mov	r14d, eax
	mov	rdi, rbx
	call	free
	test	r14d, r14d
	jne	.label_233
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x218]
	jne	.label_233
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x220]
	jne	.label_233
	mov	rbx, r12
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_484
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
	jmp	.label_487
.label_233:
	mov	r14, r13
	mov	edx, dword ptr [r14]
	mov	edi, 0xffffff9c
	mov	rsi, r12
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_490
	mov	rdi, rbx
	call	strlen
	mov	r13, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r13, rax
	mov	rsp, r13
	mov	rdi, r13
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	r15d, 0x11
	jmp	.label_499
.label_429:
	test	bl, bl
	mov	rcx, qword ptr [rbp - 0x50]
	jne	.label_501
	cmp	byte ptr [r13 + 0x15], 0
	jne	.label_504
	cmp	byte ptr [r13 + 0x22], 0
	je	.label_505
	cmp	qword ptr [rbp - 0x2a0], 1
	ja	.label_504
.label_505:
	movabs	rax, 0xffffffff00000000
	and	r14, rax
	movabs	rax, 0x200000000
	cmp	r14, rax
	jne	.label_501
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x170]
	cmp	eax, 0x8000
	jne	.label_504
.label_501:
	mov	r14, r13
.label_547:
	mov	r12d, dword ptr [rbp - 0x3c]
	xor	r13d, r13d
	jmp	.label_260
.label_382:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_515
.label_478:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r13
	jmp	.label_381
.label_374:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_522
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_532
.label_490:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	cmp	ebx, 2
	jne	.label_535
	mov	r15d, 0x11
	jmp	.label_499
.label_504:
	mov	rdi, r12
	call	unlink
	test	eax, eax
	je	.label_541
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 2
	jne	.label_305
.label_541:
	mov	cl, 1
	mov	r14, r13
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_547
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_499:
	mov	cl, 1
	mov	r12d, dword ptr [rbp - 0x3c]
.label_260:
	mov	rbx, qword ptr [rbp - 0x78]
.label_417:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_558
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_558
	cmp	byte ptr [r14 + 0x18], 0
	jne	.label_558
	cmp	dword ptr [r14], 0
	jne	.label_558
	test	bl, bl
	jne	.label_457
	lea	rbx, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	r12, rcx
	call	__lxstat
	mov	rcx, r12
	test	eax, eax
	jne	.label_509
	jmp	.label_502
.label_457:
	lea	rbx, [rbp - 0x2b0]
.label_502:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_509
	mov	rdi, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	rbx, rcx
	call	seen_file
	mov	rcx, rbx
	test	al, al
	je	.label_509
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_573
.label_434:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
.label_381:
	call	quotearg_n_style
.label_461:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_218
.label_509:
	mov	r12d, dword ptr [rbp - 0x3c]
.label_558:
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_220
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	je	.label_220
	mov	al, byte ptr [r14 + 0x18]
	test	al, al
	jne	.label_220
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	mov	rbx, rcx
	call	emit_verbose
	mov	rcx, rbx
.label_220:
	xor	esi, esi
	test	r15d, r15d
	je	.label_232
	mov	ebx, dword ptr [rbp - 0x3c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_235
	mov	al, byte ptr [r14 + 0x2a]
	test	al, al
	je	.label_235
	mov	r12, r13
	mov	r13, rcx
	mov	rax, qword ptr [rbp - 0x188]
	mov	rcx, qword ptr [rbp - 0x180]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_243
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rax
.label_274:
	call	remember_copied
	jmp	.label_435
.label_235:
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_254
	cmp	qword ptr [rbp - 0x178], 1
	jne	.label_254
	mov	r12, r13
	mov	r13, rcx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x180]
	jmp	.label_257
.label_254:
	xor	esi, esi
	cmp	byte ptr [r14 + 0x22], 0
	je	.label_232
	xor	esi, esi
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_232
	cmp	qword ptr [rbp - 0x178], 1
	ja	.label_268
	mov	edx, dword ptr [r14 + 4]
	cmp	edx, 3
	sete	al
	xor	esi, esi
	cmp	edx, 4
	je	.label_268
	and	al, byte ptr [rbp + 0x10]
	je	.label_232
.label_268:
	mov	r12, r13
	mov	r13, rcx
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x30]
	jmp	.label_274
.label_243:
	mov	rdi, rcx
	mov	rsi, rax
.label_257:
	call	src_to_dest_lookup
.label_435:
	xor	esi, esi
	test	rax, rax
	mov	rcx, r13
	mov	r13, r12
	je	.label_232
	cmp	ebx, 0x4000
	jne	.label_283
	mov	rbx, rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	r12, rax
	call	same_name
	test	al, al
	je	.label_288
	mov	qword ptr [rbp - 0x38], r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [rip + top_level_src_name]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [rip + top_level_dst_name]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	rdx, r12
	jmp	.label_217
.label_283:
	mov	qword ptr [rbp - 0x38], r14
	movzx	ecx, byte ptr [r14 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x98]
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbx, rax
	call	create_hard_link
	mov	r14b, 1
	test	al, al
	mov	rdx, rbx
	jne	.label_218
	jmp	.label_217
.label_288:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_323
	mov	r15, r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + top_level_src_name]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r14b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	je	.label_218
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_218
	mov	byte ptr [rcx], 1
	jmp	.label_218
.label_323:
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_343
	and	al, byte ptr [rbp + 0x10]
	mov	rcx, rbx
	jne	.label_345
	mov	qword ptr [rbp - 0x38], r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rbx, qword ptr [rbp - 0x50]
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	call	error
	mov	rdx, rbx
	jmp	.label_217
.label_343:
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rcx, rbx
	jmp	.label_232
.label_345:
	mov	rsi, qword ptr [rbp - 0x50]
.label_232:
	cmp	byte ptr [r14 + 0x18], 0
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rbx, qword ptr [rbp - 0x30]
	je	.label_364
	cmp	r15d, 0x11
	jne	.label_370
	mov	r12, r13
	mov	r13, rsi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	rename
	test	eax, eax
	je	.label_375
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rsi, r13
	mov	r13, r12
	mov	edi, dword ptr [rbp - 0x3c]
.label_370:
	cmp	r15d, 0x16
	je	.label_380
	cmp	r15d, 0x12
	je	.label_383
	mov	r12, r13
	test	r15d, r15d
	jne	.label_387
.label_375:
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_389
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r12
	call	emit_verbose
.label_389:
	cmp	byte ptr [r14 + 0x21], 0
	mov	r15b, byte ptr [rbp + 0x10]
	mov	r12, qword ptr [rbp + 0x28]
	je	.label_401
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_526
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_404
.label_526:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r13
	call	error
	jmp	.label_401
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [rip + top_level_src_name]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [rip + top_level_dst_name]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r14b, 1
	jmp	.label_218
.label_383:
	mov	r12, rbx
	mov	qword ptr [rbp - 0x78], rsi
	mov	ebx, edi
	and	ebx, 0xf000
	mov	rdi, r12
	cmp	ebx, 0x4000
	jne	.label_437
	call	rmdir
	jmp	.label_439
.label_387:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rdx, rbx
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	jmp	.label_447
.label_437:
	call	unlink
.label_439:
	test	eax, eax
	je	.label_456
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	jne	.label_459
.label_456:
	cmp	ebx, 0x4000
	mov	cl, 1
	je	.label_462
	mov	al, byte ptr [r14 + 0x2e]
	test	al, al
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rbx, r12
	je	.label_465
	mov	r15d, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r13
	call	emit_verbose
	mov	edi, r15d
	mov	cl, 1
	jmp	.label_465
.label_459:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rdx, r12
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	mov	rcx, r12
.label_447:
	call	error
	mov	rsi, qword ptr [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x180]
	call	forget_created
	jmp	.label_218
.label_404:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_401:
	mov	rax, r14
	test	r12, r12
	je	.label_498
	mov	byte ptr [r12], 1
.label_498:
	mov	r14b, 1
	test	r15b, r15b
	je	.label_218
	cmp	byte ptr [rax + 0x31], 0
	jne	.label_218
	mov	rdi, qword ptr [rax + 0x40]
	lea	rdx, [rbp - 0x188]
	mov	rsi, rbx
	call	record_file
	jmp	.label_218
.label_462:
	mov	edi, dword ptr [rbp - 0x3c]
.label_465:
	mov	rsi, qword ptr [rbp - 0x78]
.label_364:
	mov	qword ptr [rbp - 0x68], r13
	cmp	byte ptr [r14 + 0x2b], 0
	mov	ebx, edi
	je	.label_507
	mov	ebx, dword ptr [r14 + 0x10]
.label_507:
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15d, 0x3f
	cmp	byte ptr [r14 + 0x1d], 0
	mov	r13b, byte ptr [rbp - 0x98]
	jne	.label_511
	mov	eax, edi
	and	eax, 0xf000
	xor	edx, edx
	cmp	eax, 0x4000
	mov	r15d, 0x12
	cmovne	r15d, edx
.label_511:
	mov	r12d, edi
	mov	qword ptr [rbp - 0x50], rcx
	movzx	ecx, cl
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x60], ecx
	mov	r8, r14
	call	set_process_security_ctx
	test	al, al
	je	.label_518
	mov	dword ptr [rbp - 0x90], ebx
	mov	r9d, r15d
	and	r9d, ebx
	mov	ecx, r12d
	mov	r15d, ecx
	and	r15d, 0xf000
	cmp	r15d, 0x4000
	mov	qword ptr [rbp - 0x38], r14
	mov	dword ptr [rbp - 0x84], r15d
	jne	.label_519
	mov	rax, qword ptr [rbp - 0x188]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x80]
	test	rdi, rdi
	mov	r8, qword ptr [rbp - 0x50]
	mov	r13, qword ptr [rbp - 0x30]
	je	.label_530
	mov	rdx, rdi
.label_542:
	cmp	qword ptr [rdx + 8], rcx
	jne	.label_537
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_538
.label_537:
	mov	rdx, qword ptr [rdx]
	test	rdx, rdx
	jne	.label_542
.label_530:
	mov	rdx, rsp
	lea	rsi, [rdx - 0x20]
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsp, rsi
	mov	qword ptr [rdx - 0x20], rdi
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	r8b, r8b
	jne	.label_403
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	jne	.label_403
	cmp	byte ptr [r14 + 0x21], 0
	jne	.label_553
	cmp	byte ptr [r14 + 0x25], 0
	je	.label_554
.label_553:
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_555
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_556
.label_555:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r14 + 0x26], 0
	mov	esi, 0
	mov	rdx, qword ptr [rbp - 0x78]
	jne	.label_563
	jmp	.label_300
.label_518:
	xor	r14d, r14d
	jmp	.label_218
.label_519:
	cmp	byte ptr [r14 + 0x2c], 0
	je	.label_569
	mov	r12d, r9d
	mov	rbx, qword ptr [rbp - 0x48]
	cmp	byte ptr [rbx], 0x2f
	je	.label_528
	mov	rdi, qword ptr [rbp - 0x30]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_574
	cmp	byte ptr [rbx + 1], 0
	je	.label_202
.label_574:
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_576
	call	__xstat
	test	eax, eax
	jne	.label_202
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_211
.label_202:
	mov	rdi, rbx
	call	free
.label_466:
	mov	rbx, qword ptr [rbp - 0x48]
.label_528:
	movzx	ecx, byte ptr [r14 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, rbx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdx, r15
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_224
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	jmp	.label_242
.label_403:
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xfff
	mov	esi, r9d
	not	esi
	and	esi, eax
	mov	rdi, r13
	mov	ebx, r9d
	call	mkdir
	test	eax, eax
	je	.label_252
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	jmp	.label_256
.label_569:
	cmp	byte ptr [r14 + 0x17], 0
	mov	r12, qword ptr [rbp - 0x30]
	je	.label_258
	mov	r12d, r9d
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	cmp	byte ptr [r14 + 0x16], 0
	mov	al, 1
	jne	.label_483
	cmp	dword ptr [r14 + 8], 3
	sete	al
.label_483:
	movzx	r8d, r13b
	shl	r8d, 0xa
	sub	rsp, 8
	movzx	r9d, al
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r14, qword ptr [rbp - 0x48]
	mov	rsi, r14
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, rbx
	push	-1
	call	force_linkat
	add	rsp, 0x10
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_278
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r12
.label_242:
	mov	rcx, r15
	call	error
	jmp	.label_292
.label_252:
	lea	rdx, [rbp - 0x2b0]
	mov	edi, 1
	mov	rsi, r13
	call	__lxstat
	test	eax, eax
	je	.label_298
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
.label_256:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_212:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_306
.label_224:
	mov	dword ptr [rbp - 0x58], r12d
.label_565:
	mov	sil, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_311
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
.label_534:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_567:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_306:
	mov	rdx, rbx
.label_450:
	call	error
.label_292:
	mov	rdx, qword ptr [rbp - 0x78]
.label_563:
	mov	r13, qword ptr [rbp - 0x68]
.label_217:
	mov	rbx, qword ptr [rbp - 0x38]
	cmp	byte ptr [rbx + 0x25], 0
	jne	.label_322
	test	rdx, rdx
	mov	r12, qword ptr [rbp - 0x30]
	jne	.label_325
	mov	rsi, qword ptr [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x180]
	call	forget_created
.label_325:
	test	r13, r13
	je	.label_332
	mov	rdi, r13
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_336
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
.label_259:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
.label_521:
	mov	rdx, rbx
	jmp	.label_346
.label_332:
	xor	r14d, r14d
	jmp	.label_218
.label_336:
	cmp	byte ptr [rbx + 0x2e], 0
	je	.label_350
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rbx
	call	__printf_chk
	jmp	.label_218
.label_350:
	xor	r14d, r14d
	jmp	.label_218
.label_258:
	cmp	r15d, 0x8000
	je	.label_366
	cmp	r15d, 0xa000
	je	.label_361
	mov	al, byte ptr [r14 + 0x14]
	test	al, al
	je	.label_361
.label_366:
	mov	r12d, r9d
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0xb8], eax
	mov	r13b, byte ptr [r14 + 0x23]
	xor	esi, esi
	cmp	dword ptr [r14 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	call	open_safer
	test	eax, eax
	js	.label_290
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	dword ptr [rbp - 0x80], eax
	mov	esi, eax
	call	__fxstat
	test	eax, eax
	je	.label_392
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
.label_480:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_402
.label_298:
	mov	r12d, dword ptr [rbp - 0x298]
	mov	eax, r12d
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_405
	xor	r15d, r15d
	mov	esi, ebx
	jmp	.label_261
.label_278:
	mov	dword ptr [rbp - 0x58], r12d
	xor	esi, esi
	xor	r14d, r14d
.label_311:
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
.label_495:
	mov	dword ptr [rbp - 0x54], eax
.label_331:
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbx, qword ptr [rbp - 0x68]
	mov	r15d, dword ptr [rbp - 0x84]
	jmp	.label_209
.label_405:
	mov	esi, r12d
	or	esi, 0x1c0
	mov	rdi, r13
	call	chmod
	mov	r15b, 1
	test	eax, eax
	mov	esi, ebx
	je	.label_261
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	jmp	.label_256
.label_261:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_295
	mov	rdx, qword ptr [rbp - 0x2b0]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rdi, r13
	call	remember_copied
	mov	esi, ebx
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_295:
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_300
	mov	r13d, r12d
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_432
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r12
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_269
.label_290:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
.label_546:
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
	jmp	.label_450
.label_211:
	mov	rax, qword ptr [rbp - 0x218]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_455
	mov	r14, qword ptr [rbp - 0x220]
	mov	r15, qword ptr [rbp - 0x3d0]
	mov	rdi, rbx
	call	free
	cmp	r14, r15
	mov	r14, qword ptr [rbp - 0x38]
	je	.label_466
	jmp	.label_470
.label_361:
	movsx	eax, r15w
	cmp	eax, 0xfff
	jle	.label_471
	movzx	eax, r15w
	cmp	eax, 0x6000
	je	.label_205
	cmp	eax, 0x2000
	je	.label_205
	cmp	eax, 0x1000
	jne	.label_479
	mov	eax, ecx
	mov	r14, r12
	mov	ebx, r9d
	not	ebx
	and	ebx, eax
	mov	qword ptr [rbp - 0x220], 0
	lea	rcx, [rbp - 0x220]
	xor	edi, edi
	mov	rsi, r14
	mov	edx, ebx
	mov	r12d, r9d
	call	__xmknod
	mov	cl, 1
	mov	qword ptr [rbp - 0x80], rcx
	test	eax, eax
	mov	rdi, r14
	mov	dword ptr [rbp - 0x58], r12d
	je	.label_488
	and	ebx, 0xffffefff
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_491
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_492
	jmp	.label_493
.label_556:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_554:
	xor	r15d, r15d
	xor	esi, esi
	jmp	.label_300
.label_535:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	jmp	.label_395
.label_413:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rdx, r12
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	jmp	.label_461
.label_392:
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_512
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x3d0]
	jne	.label_512
	and	dword ptr [rbp - 0x90], 0x1ff
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	mov	edx, eax
	mov	ecx, r12d
	jne	.label_327
	mov	dword ptr [rbp - 0x58], r12d
	mov	r12, qword ptr [rbp - 0x38]
	cmp	byte ptr [r12 + 0x23], 0
	mov	eax, 0x201
	mov	esi, 1
	cmovne	esi, eax
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_523
	test	ebx, ebx
	jns	.label_527
	jmp	.label_293
.label_512:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_531
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_402:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_317:
	mov	edi, dword ptr [rbp - 0x80]
	call	close
	test	eax, eax
	jns	.label_544
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	r13, rbx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	mov	rbx, r13
	call	error
.label_544:
	mov	rdi, rbx
	call	free
	test	r15b, r15b
	je	.label_292
	mov	dword ptr [rbp - 0x58], r12d
	xor	esi, esi
	mov	r14b, 1
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r15d, dword ptr [rbp - 0x84]
.label_221:
	mov	rbx, qword ptr [rbp - 0x68]
	jmp	.label_209
.label_455:
	mov	rdi, rbx
	call	free
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	jmp	.label_567
.label_471:
	movzx	eax, r15w
	cmp	eax, 0xa000
	je	.label_568
	cmp	eax, 0xc000
	jne	.label_479
.label_205:
	mov	edx, r9d
	not	edx
	and	edx, ecx
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x220], rax
	lea	rcx, [rbp - 0x220]
	xor	edi, edi
	mov	rsi, r12
	mov	ebx, r9d
	call	__xmknod
	test	eax, eax
	je	.label_578
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rsi, r12
	mov	rbx, rax
	mov	edi, 4
	jmp	.label_212
.label_432:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_225
	xor	eax, eax
	mov	rdx, r12
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_339
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_269:
	mov	r12d, r13d
	mov	esi, ebx
.label_300:
	mov	qword ptr [rbp - 0x90], r15
	mov	rcx, qword ptr [rbp - 0xb8]
	test	rcx, rcx
	mov	dword ptr [rbp - 0x58], esi
	mov	dword ptr [rbp - 0x54], r12d
	je	.label_241
	mov	al, byte ptr [r14 + 0x1c]
	test	al, al
	je	.label_241
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_248
.label_241:
	movups	xmm0, xmmword ptr [r14 + 0x40]
	movaps	xmmword ptr [rbp - 0x1e0], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movups	xmm3, xmmword ptr [r14 + 0x30]
	movaps	xmmword ptr [rbp - 0x1f0], xmm3
	movaps	xmmword ptr [rbp - 0x200], xmm2
	movaps	xmmword ptr [rbp - 0x210], xmm1
	movaps	xmmword ptr [rbp - 0x220], xmm0
	mov	esi, 2
	mov	r13, qword ptr [rbp - 0x48]
	mov	rdi, r13
	call	savedir
	test	rax, rax
	je	.label_267
	cmp	dword ptr [r14 + 4], 3
	jne	.label_270
	mov	dword ptr [rbp - 0x21c], 2
.label_270:
	cmp	byte ptr [rax], 0
	mov	qword ptr [rbp - 0xa8], rax
	mov	r15b, 1
	je	.label_273
	xor	r14d, r14d
	mov	r12, rax
	mov	rbx, qword ptr [rbp - 0x30]
	mov	r13, qword ptr [rbp - 0x48]
.label_316:
	mov	byte ptr [rbp - 0x80], r15b
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	file_name_concat
	mov	r15, rax
	mov	qword ptr [rbp - 0xb8], r15
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	file_name_concat
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x18]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rbp - 0x340], al
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, dword ptr [rbp - 0x60]
	lea	rcx, [rbp - 0x188]
	mov	r8, qword ptr [rbp - 0x98]
	lea	r9, [rbp - 0x220]
	push	0
	lea	rax, [rbp - 0x3d0]
	push	rax
	lea	rax, [rbp - 0x340]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r15d, eax
	and	r15b, byte ptr [rbp - 0x80]
	movzx	r13d, byte ptr [rbp - 0x3d0]
	mov	rax, qword ptr [rbp + 0x20]
	or	byte ptr [rax], r13b
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rbp - 0xb8]
	call	free
	test	r13b, r13b
	jne	.label_310
	and	r14b, 1
	or	r14b, byte ptr [rbp - 0x340]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [r12 + rax + 1], 0
	lea	r12, [r12 + rax + 1]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	r13, qword ptr [rbp - 0x48]
	jne	.label_316
	jmp	.label_310
.label_267:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x80], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_329
.label_248:
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	xor	esi, esi
	xor	r14d, r14d
	jmp	.label_331
.label_273:
	xor	r14d, r14d
.label_310:
	mov	rdi, qword ptr [rbp - 0xa8]
	call	free
	and	r14b, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], r14b
	test	r15b, r15b
	setne	al
	mov	qword ptr [rbp - 0x80], rax
.label_329:
	mov	rbx, qword ptr [rbp - 0x68]
	mov	r15d, dword ptr [rbp - 0x84]
	xor	esi, esi
	xor	r14d, r14d
	mov	rcx, qword ptr [rbp - 0x50]
.label_209:
	test	cl, cl
	jne	.label_304
	cmp	r15d, 0x4000
	je	.label_304
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x14]
	test	al, al
	jne	.label_304
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x21], 0
	jne	.label_354
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x25], 0
	je	.label_304
.label_354:
	mov	dword ptr [rbp - 0xb8], esi
	mov	qword ptr [rbp - 0x50], rcx
	mov	r12, qword ptr [rbp - 0x38]
	cmp	byte ptr [r12 + 0x23], 0
	je	.label_358
	cmp	byte ptr [r12 + 0x26], 0
	je	.label_362
.label_358:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	r15, rbx
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r13
	mov	r13, r15
	mov	r15d, dword ptr [rbp - 0x84]
	call	error
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	byte ptr [r12 + 0x26], 0
	mov	rcx, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0xb8]
	jne	.label_217
	jmp	.label_304
.label_362:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rcx, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0xb8]
.label_304:
	cmp	byte ptr [rbp + 0x10], 0
	mov	r13, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x30]
	je	.label_396
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_396
	mov	dword ptr [rbp - 0xb8], r14d
	mov	r14, r13
	mov	r13d, esi
	mov	rbx, rcx
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	r12, r10
	mov	rsi, r10
	call	__lxstat
	test	eax, eax
	jne	.label_415
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 0x40]
	lea	rdx, [rbp - 0x220]
	mov	rsi, r12
	call	record_file
.label_415:
	mov	rcx, rbx
	mov	esi, r13d
	mov	r13, r14
	mov	r14d, dword ptr [rbp - 0xb8]
	mov	r10, r12
.label_396:
	cmp	r15d, 0x4000
	je	.label_412
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x17]
	test	al, al
	jne	.label_219
.label_412:
	test	r14b, r14b
	jne	.label_219
	mov	rbx, qword ptr [rbp - 0x38]
	cmp	byte ptr [rbx + 0x1f], 0
	je	.label_419
	mov	qword ptr [rbp - 0x50], rcx
	movups	xmm0, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x220], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x210], xmm0
	mov	r15d, esi
	test	sil, sil
	je	.label_253
	lea	rsi, [rbp - 0x220]
	mov	r14, r10
	mov	rdi, r10
	call	lutimens
	test	eax, eax
	je	.label_360
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_431
	jmp	.label_360
.label_253:
	lea	rsi, [rbp - 0x220]
	mov	r14, r10
	mov	rdi, r10
	call	utimens
	test	eax, eax
	je	.label_360
	call	__errno_location
.label_431:
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	r12, r13
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	mov	r13, r12
	mov	r14, qword ptr [rbp - 0x30]
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_360
	xor	r14d, r14d
	jmp	.label_218
.label_360:
	mov	rcx, qword ptr [rbp - 0x50]
	mov	esi, r15d
	mov	r10, r14
.label_419:
	test	sil, sil
	jne	.label_219
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_448
	test	cl, cl
	jne	.label_451
	mov	eax, dword ptr [rbp - 0x16c]
	cmp	eax, dword ptr [rbp - 0x294]
	jne	.label_451
	mov	eax, dword ptr [rbp - 0x168]
	cmp	eax, dword ptr [rbp - 0x290]
	je	.label_448
.label_451:
	xor	r8d, r8d
	mov	r14, rcx
	test	cl, cl
	setne	r8b
	mov	r9d, dword ptr [rbp - 0x298]
	lea	rcx, [rbp - 0x188]
	mov	edx, 0xffffffff
	mov	rdi, rbx
	mov	r15, r10
	mov	rsi, r10
	call	set_owner
	cmp	eax, -1
	je	.label_472
	test	eax, eax
	jne	.label_473
	and	dword ptr [rbp - 0x3c], 0xfffff1ff
.label_473:
	mov	rcx, r14
	mov	r10, r15
.label_448:
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_474
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_476
.label_474:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r10
	mov	r8d, dword ptr [rbp - 0x3c]
	call	copy_acl
	test	eax, eax
	je	.label_219
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_219
	xor	r14d, r14d
	jmp	.label_218
.label_305:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
.label_395:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_489
.label_472:
	xor	r14d, r14d
	jmp	.label_218
.label_578:
	mov	dword ptr [rbp - 0x58], ebx
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
.label_488:
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbx, qword ptr [rbp - 0x68]
	xor	esi, esi
	jmp	.label_209
.label_568:
	mov	r12d, r9d
	mov	rsi, qword ptr [rbp - 0x158]
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r15, rax
	test	r15, r15
	je	.label_529
	mov	dword ptr [rbp - 0x58], r12d
	movzx	ecx, byte ptr [r14 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x30]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_508
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	jne	.label_510
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x2d]
	test	al, al
	je	.label_510
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0xa000
	jne	.label_510
	mov	rbx, qword ptr [rbp - 0x280]
	mov	rdi, r15
	call	strlen
	cmp	rbx, rax
	jne	.label_510
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_510
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	r13d, eax
	mov	rdi, rbx
	call	free
	test	r13d, r13d
	je	.label_508
.label_510:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
.label_493:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_212
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_533
	jmp	.label_534
.label_476:
	cmp	byte ptr [rbx + 0x2b], 0
	je	.label_536
	mov	edx, dword ptr [rbx + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, r10
	call	set_acl
	test	eax, eax
	je	.label_219
	xor	r14d, r14d
	jmp	.label_218
.label_529:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_545
	jmp	.label_546
.label_536:
	mov	r13, r10
	mov	r14, rcx
	test	cl, cl
	je	.label_410
	mov	al, byte ptr [rbx + 0x20]
	test	al, al
	je	.label_410
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_552
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_552:
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r13
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_219
	xor	r14d, r14d
	jmp	.label_218
.label_508:
	mov	r14, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x25], 0
	jne	.label_322
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_565
	mov	esi, dword ptr [rbp - 0x16c]
	mov	edx, dword ptr [rbp - 0x168]
	mov	rdi, r14
	call	lchown
	test	eax, eax
	je	.label_565
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_571
	cmp	ebx, 1
	jne	.label_575
.label_571:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1a], 0
	je	.label_565
.label_575:
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x24], 0
	je	.label_551
	mov	r13, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_217
.label_491:
	xor	esi, esi
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x50]
	jmp	.label_221
.label_410:
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_227
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_230
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_230:
	not	eax
	and	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x90]
	test	al, al
	jne	.label_239
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_239
	test	r14b, r14b
	je	.label_406
	lea	rdx, [rbp - 0x2b0]
	mov	edi, 1
	mov	rsi, r13
	call	__lxstat
	test	eax, eax
	je	.label_406
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	jmp	.label_259
.label_523:
	test	ebx, ebx
	js	.label_263
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x25]
	test	al, al
	je	.label_263
.label_527:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x23], 0
	je	.label_266
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x26], 0
	je	.label_517
.label_266:
	mov	dword ptr [r15], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x26], 0
	je	.label_263
	xor	r15d, r15d
	jmp	.label_286
.label_227:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_239
.label_517:
	mov	dword ptr [r15], 0x5f
.label_263:
	test	ebx, ebx
	js	.label_293
	mov	dword ptr [rbp - 0x54], 0
	xor	ecx, ecx
	jmp	.label_289
.label_293:
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x16], 0
	mov	dword ptr [rbp - 0x54], 0
	je	.label_289
	mov	rdi, qword ptr [rbp - 0x30]
	call	unlink
	test	eax, eax
	je	.label_303
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_203:
	xor	ebx, ebx
	mov	r12d, dword ptr [rbp - 0x58]
	jmp	.label_317
.label_303:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x2e], 0
	je	.label_318
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	__printf_chk
.label_318:
	mov	dl, 1
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x21], 0
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	mov	r12d, eax
	je	.label_327
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	call	set_process_security_ctx
	mov	dl, 1
	xor	r15d, r15d
	test	al, al
	mov	ecx, r12d
	mov	al, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	ebx, 0
	je	.label_317
	jmp	.label_327
.label_406:
	mov	eax, dword ptr [rbp - 0x298]
	mov	dword ptr [rbp - 0x54], eax
	not	eax
	test	dword ptr [rbp - 0x58], eax
	je	.label_239
	mov	al, 1
	mov	qword ptr [rbp - 0x90], rax
.label_239:
	mov	rax, qword ptr [rbp - 0x90]
	test	al, 1
	mov	rbx, r13
	je	.label_219
	mov	esi, dword ptr [rbp - 0x54]
	or	esi, dword ptr [rbp - 0x58]
	mov	rdi, rbx
	call	chmod
	test	eax, eax
	je	.label_219
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r13
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_218
.label_219:
	mov	rax, qword ptr [rbp - 0x80]
	test	al, al
	setne	r14b
	jmp	.label_218
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
.label_487:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_381
.label_551:
	mov	sil, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_495
.label_339:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_269
.label_322:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_327:
	mov	byte ptr [rbp - 0x98], dl
	mov	dword ptr [rbp - 0x58], r12d
	mov	dword ptr [rbp - 0x54], ecx
	mov	r15d, ecx
	not	r15d
	and	r15d, dword ptr [rbp - 0x90]
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	r12d, eax
	call	__errno_location
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, dword ptr [rax]
	mov	ebx, r12d
	test	r12d, r12d
	jns	.label_416
	cmp	r14d, 0x11
	jne	.label_416
	mov	r14d, 0x11
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_363
	lea	rdx, [rbp - 0x340]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	call	__lxstat
	mov	r14d, 0x11
	test	eax, eax
	jne	.label_416
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	jne	.label_416
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_430
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r14d, dword ptr [rax]
.label_416:
	cmp	r14d, 0x15
	jne	.label_363
	test	ebx, ebx
	jns	.label_363
	mov	r14d, 0x15
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_363
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	strlen
	xor	r14d, r14d
	cmp	byte ptr [r15 + rax - 1], 0x2f
	setne	r14b
	or	r14d, 0x14
.label_363:
	mov	al, byte ptr [rbp - 0x98]
	mov	cl, al
.label_289:
	test	ebx, ebx
	js	.label_443
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	je	.label_460
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_286
.label_443:
	mov	qword ptr [rbp - 0x50], rcx
	test	cl, cl
	mov	r12d, dword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x54]
	jne	.label_467
	cmp	r14d, 2
	jne	.label_467
	mov	dl, 1
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_327
.label_467:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_480
.label_460:
	mov	dword ptr [rbp - 0x60], ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	test	r13b, r13b
	je	.label_275
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_334
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edi, dword ptr [rbp - 0x60]
	mov	edx, dword ptr [rbp - 0x80]
	call	ioctl
	test	eax, eax
	je	.label_275
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_334
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_494
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbx
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_207
.label_334:
	call	getpagesize
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x1e8]
	movabs	r12, 0x2000000000000001
	cmp	rax, r12
	mov	ecx, 0x200
	mov	r13d, 0x200
	cmovb	r13, rax
	test	rax, rax
	cmovle	r13, rcx
	cmp	rax, r12
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 0xf0], r13
	cmovae	r13, rcx
	test	rax, rax
	cmovle	r13, rcx
	cmp	rax, 0x20000
	cmovl	r13, rcx
	mov	qword ptr [rbp - 0xc0], r13
	xor	r13d, r13d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rbp - 0x80]
	call	fdadvise
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0x3b8]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_570
	mov	rcx, qword ptr [rbp - 0x3a0]
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x37
	add	rdx, rcx
	sar	rdx, 9
	cmp	rdx, qword ptr [rbp - 0x390]
	setg	r13b
.label_570:
	movsxd	r15, ebx
	and	eax, dword ptr [rbp - 0x208]
	cmp	eax, 0x8000
	jne	.label_548
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rbp - 0xc4], ecx
	je	.label_540
	and	al, r13b
	jne	.label_540
.label_548:
	mov	rax, qword ptr [rbp - 0x398]
	cmp	rax, r12
	mov	ecx, 0x200
	mov	edi, 0x200
	cmovb	rdi, rax
	test	rax, rax
	cmovle	rdi, rcx
	cmp	rax, r12
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	cmp	rax, 0x20000
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, rbx
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_560
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rax, rdx
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	mov	qword ptr [rbp - 0xc0], rdx
.label_560:
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	lea	rax, [rsi - 1]
	cmp	rax, rbx
	cmovae	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rsi
	mov	dword ptr [rbp - 0xc4], 0
.label_540:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rax + r15]
	call	xmalloc
	mov	rcx, rax
	mov	qword ptr [rbp - 0x98], rcx
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r15
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe8], rcx
	test	r13b, r13b
	je	.label_572
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	eax, dword ptr [rbp - 0xc4]
	test	al, al
	je	.label_213
	mov	rax, qword ptr [rbp - 0x38]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_247
.label_213:
	mov	dword ptr [rbp - 0xac], 1
.label_247:
	lea	rsi, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x80]
	call	extent_scan_init
	xor	eax, eax
	mov	qword ptr [rbp - 0xd0], rax
	cmp	dword ptr [rbp - 0xac], 3
	mov	eax, 0
	cmove	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf8], rax
	mov	al, 1
	mov	dword ptr [rbp - 0x9c], eax
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_222
.label_506:
	cmp	qword ptr [rbp - 0x328], 0
	je	.label_237
	cmp	dword ptr [rbp - 0xac], 1
	jne	.label_240
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_438:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rcx, [rcx + rcx*2]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	r12, rdx
	mov	r13, rax
	lea	rax, [rax + rdx]
	cmp	rax, qword ptr [rbp - 0xa8]
	jle	.label_246
	mov	rax, r12
	mov	r13, qword ptr [rbp - 0xa8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r12, rax
	sub	r13, rax
.label_246:
	mov	r15, r12
	sub	r15, r14
	sub	r15, qword ptr [rbp - 0xd0]
	mov	r14d, dword ptr [rbp - 0x60]
	je	.label_282
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x80]
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_265
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_516
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	edi, 0x20000
	mov	eax, 0x400
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_516
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_516:
	mov	r14d, dword ptr [rbp - 0x60]
.label_418:
	test	r15, r15
	je	.label_282
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	cmp	rbx, r15
	cmovae	rbx, r15
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, r14d
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r15, rcx
	cmp	rax, rbx
	je	.label_418
	jmp	.label_309
.label_282:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rbp - 0x80]
	mov	esi, r14d
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0xf8]
	lea	rax, [rbp - 0x69]
	push	rax
	lea	rax, [rbp - 0xd8]
	push	rax
	push	r13
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_234
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rbx, [rax + r12]
	mov	cl, byte ptr [rbp - 0x69]
	mov	dword ptr [rbp - 0x9c], ecx
	cmp	rbx, qword ptr [rbp - 0xa8]
	je	.label_313
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, rcx
	inc	edx
	mov	edx, edx
	mov	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	cmp	rdx, qword ptr [rbp - 0x328]
	mov	r14, r12
	mov	rcx, r13
	mov	qword ptr [rbp - 0xd0], rcx
	jb	.label_438
	test	rax, rax
	jne	.label_249
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_249
.label_237:
	mov	r12, r14
	mov	r13, qword ptr [rbp - 0xd0]
.label_249:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	cmp	byte ptr [rbp - 0x31f], 0
	mov	qword ptr [rbp - 0xd0], r13
	mov	r14, r12
	je	.label_222
	jmp	.label_566
.label_240:
	mov	r15d, 1
	xor	ecx, ecx
.label_485:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rcx, [rcx + rcx*2]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	r12, rdx
	mov	r13, rax
	lea	rax, [rax + rdx]
	cmp	rax, qword ptr [rbp - 0xa8]
	jle	.label_391
	mov	rax, r12
	mov	r13, qword ptr [rbp - 0xa8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r12, rax
	sub	r13, rax
.label_391:
	mov	rbx, r12
	sub	rbx, r14
	sub	rbx, qword ptr [rbp - 0xd0]
	je	.label_359
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x80]
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_265
	xor	edx, edx
	cmp	dword ptr [rbp - 0xac], 3
	sete	dl
	mov	edi, dword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rbx
	call	create_hole
	mov	cl, 1
	mov	dword ptr [rbp - 0x9c], ecx
	test	al, al
	jne	.label_368
	jmp	.label_234
.label_359:
	mov	dword ptr [rbp - 0x9c], 0
.label_368:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0xf8]
	lea	rax, [rbp - 0x69]
	push	rax
	lea	rax, [rbp - 0xd8]
	push	rax
	push	r13
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_234
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rbx, [rdx + r12]
	movzx	eax, byte ptr [rbp - 0x69]
	cmp	rbx, qword ptr [rbp - 0xa8]
	je	.label_393
	mov	ecx, r15d
	inc	r15d
	cmp	rcx, qword ptr [rbp - 0x328]
	mov	r14, r12
	mov	rsi, r13
	mov	qword ptr [rbp - 0xd0], rsi
	jb	.label_485
	test	rdx, rdx
	je	.label_249
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_249
.label_393:
	test	rdx, rdx
	je	.label_409
	mov	dword ptr [rbp - 0x9c], eax
.label_409:
	mov	byte ptr [rbp - 0x31f], 1
	mov	rbx, qword ptr [rbp - 0xa8]
	jmp	.label_249
.label_313:
	test	rax, rax
	jne	.label_409
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_409
.label_222:
	lea	rdi, [rbp - 0x340]
	call	extent_scan_read
	test	al, al
	jne	.label_506
	cmp	byte ptr [rbp - 0x31f], 0
	je	.label_549
.label_566:
	mov	r15, qword ptr [rbp - 0xa8]
	sub	r15, rbx
	jg	.label_424
	mov	eax, dword ptr [rbp - 0x9c]
	and	al, 1
	je	.label_314
.label_424:
	cmp	dword ptr [rbp - 0xac], 1
	jne	.label_294
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_357
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_357
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_357:
	mov	r12d, 0x400
.label_454:
	test	r15, r15
	je	.label_314
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	r14d, 0x20000
	cmovne	r14, r12
	cmp	r14, r15
	cmovae	r14, r15
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, dword ptr [rbp - 0x60]
	mov	rdx, r14
	call	full_write
	cmp	rax, r14
	mov	ecx, 0
	cmove	rcx, r14
	sub	r15, rcx
	cmp	rax, r14
	je	.label_454
	jmp	.label_449
.label_309:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	jmp	.label_463
.label_430:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	al, byte ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_203
.label_265:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_463:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_234:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	xor	r15d, r15d
	jmp	.label_207
.label_549:
	cmp	byte ptr [rbp - 0x320], 0
	je	.label_344
.label_572:
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0xc4]
	test	al, al
	cmovne	r8, qword ptr [rbp - 0xf0]
	xor	r9d, r9d
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rax, [rbp - 0xd8]
	lea	rbx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc0]
	push	rax
	push	rbx
	push	-1
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_436
	cmp	byte ptr [rbp - 0xd8], 0
	je	.label_275
	mov	rsi, qword ptr [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x60]
	call	ftruncate
	test	eax, eax
	jns	.label_275
	jmp	.label_449
.label_294:
	mov	edi, dword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ftruncate
	test	eax, eax
	je	.label_314
.label_449:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
.label_285:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_500:
	call	error
	jmp	.label_436
.label_314:
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_275
	sub	qword ptr [rbp - 0xa8], rbx
	jle	.label_275
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x60]
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0xa8]
	call	fallocate
	test	eax, eax
	jns	.label_275
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_275
	cmp	ebx, 0x5f
	jne	.label_539
.label_275:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_543
	movups	xmm0, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x340], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x330], xmm0
	lea	rdx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fdutimens
	test	eax, eax
	je	.label_543
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_436
.label_543:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_307
	mov	eax, dword ptr [rbp - 0x16c]
	cmp	eax, dword ptr [rbp - 0x204]
	jne	.label_561
	mov	eax, dword ptr [rbp - 0x168]
	cmp	eax, dword ptr [rbp - 0x200]
	je	.label_307
.label_561:
	xor	r8d, r8d
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	setne	r8b
	mov	r9d, dword ptr [rbp - 0x208]
	lea	rcx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x60]
	call	set_owner
	cmp	eax, -1
	je	.label_436
	test	eax, eax
	jne	.label_307
	and	dword ptr [rbp - 0xb8], 0xfffff1ff
.label_307:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_215
	cmp	byte ptr [rbp - 0x208], 0
	js	.label_215
	call	geteuid
	test	eax, eax
	je	.label_215
	cmp	dword ptr [rbp - 0x60], 0
	js	.label_577
	mov	esi, 0x180
	mov	edi, dword ptr [rbp - 0x60]
	call	fchmod
	jmp	.label_206
.label_436:
	xor	r15d, r15d
	jmp	.label_207
.label_577:
	mov	esi, 0x180
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_206:
	test	eax, eax
	jne	.label_215
	mov	esi, dword ptr [rbp - 0x54]
	not	esi
	and	esi, dword ptr [rbp - 0x90]
	cmp	dword ptr [rbp - 0x60], 0
	js	.label_216
	mov	edi, dword ptr [rbp - 0x60]
	call	fchmod
	jmp	.label_215
.label_216:
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_215:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_223
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_496
.label_223:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0xb8]
	call	copy_acl
	mov	r15b, 1
	test	eax, eax
	jne	.label_236
	jmp	.label_207
.label_496:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_373
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rax + 0x10]
	jmp	.label_244
.label_373:
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	je	.label_245
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x20]
	test	al, al
	je	.label_245
	mov	edx, dword ptr [rip + cached_umask.mask]
	cmp	edx, -1
	jne	.label_422
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	edx, dword ptr [rip + cached_umask.mask]
.label_422:
	not	edx
	and	edx, 0x1b6
.label_244:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	ebx, dword ptr [rbp - 0x60]
	mov	esi, ebx
	call	set_acl
	test	eax, eax
	sete	r15b
	jmp	.label_286
.label_245:
	mov	r15b, 1
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_207
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_264
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_264:
	not	eax
	test	dword ptr [rbp - 0x54], eax
	je	.label_207
	cmp	dword ptr [rbp - 0x60], 0
	js	.label_277
	mov	edi, dword ptr [rbp - 0x60]
	mov	esi, dword ptr [rbp - 0x90]
	call	fchmod
	jmp	.label_280
.label_344:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	jmp	.label_285
.label_277:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x90]
	call	chmod
.label_280:
	test	eax, eax
	je	.label_207
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_236:
	mov	rax, qword ptr [rbp - 0x38]
	mov	r15b, byte ptr [rax + 0x24]
	xor	r15b, 1
.label_207:
	mov	ebx, dword ptr [rbp - 0x60]
.label_286:
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	r12d, dword ptr [rbp - 0x58]
	jns	.label_308
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_308:
	mov	rbx, qword ptr [rbp - 0x98]
	jmp	.label_317
.label_539:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_500
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a70

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ab0

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_580
	cmp	eax, 1
	jne	.label_581
.label_580:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_579
.label_581:
	xor	eax, eax
.label_579:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_582
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
	add	rsp, 8
.label_582:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b10

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_584
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_583
.label_584:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_583
	xor	r12b, 1
	jne	.label_583
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_583:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c00

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_585
	call	can_write_any_file
	test	al, al
	jne	.label_585
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	je	.label_585
	mov	edi, dword ptr [rbx + 0x18]
	lea	rsi, [rsp + 0x14]
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15, qword ptr [rip + stderr]
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_587
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_587
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_590
.label_587:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_586
.label_589:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	r8, rax
	mov	r9d, dword ptr [rbx + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	call	__fprintf_chk
	jmp	.label_592
.label_585:
	mov	r15, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
.label_592:
	call	yesno
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_590:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
	jmp	.label_589
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d40

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_225
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_594
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_595
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_594:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_593
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_593:
	mov	esi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e00

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13d, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_596
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_598
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	jne	.label_606
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_596
.label_606:
	test	al, al
	setne	dl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_598
	test	dl, dl
	jne	.label_598
	lea	rcx, [r15 + 0x10]
	jmp	.label_600
.label_598:
	add	rcx, 0x18
.label_600:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, r9d
	test	cx, 0xfff
	je	.label_596
	and	r9d, eax
	and	r9d, 0x1c0
	mov	rdi, r14
	mov	esi, r13d
	mov	edx, r9d
	call	qset_acl
	test	eax, eax
	je	.label_596
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_602
	cmp	ebx, 1
	jne	.label_601
.label_602:
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_605
.label_601:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_608
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_605:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_597
.label_596:
	cmp	r13d, -1
	je	.label_607
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_597
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_599
	cmp	ebx, 1
	jne	.label_604
.label_599:
	mov	esi, 0xffffffff
	mov	edi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_611
.label_607:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_597
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_603
	cmp	ebx, 1
	jne	.label_604
.label_603:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_611:
	mov	dword ptr [rbp], ebx
.label_604:
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_610
	cmp	ebx, 1
	jne	.label_612
.label_610:
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_609
.label_612:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_597
.label_609:
	xor	eax, eax
.label_597:
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
	#Procedure 0x407fe0

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0xc], r9d
	mov	r15, rdx
	mov	dword ptr [rsp + 4], esi
	mov	r12d, edi
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r8, r8
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], r8
	cmovne	rax, r8
	mov	qword ptr [rsp + 0x38], rax
	xor	r8d, r8d
	test	rsi, rsi
	mov	r14d, 0
	je	.label_629
	cmp	rsi, rcx
	mov	rbx, rcx
	cmovb	rbx, rsi
	xor	r14d, r14d
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x30], rcx
.label_615:
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x20], rsi
	nop	word ptr cs:[rax + rax]
.label_618:
	mov	edi, r12d
	mov	rsi, r15
	mov	rdx, rbx
	call	read
	mov	r13, rax
	test	r13, r13
	jns	.label_634
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	je	.label_618
	jmp	.label_621
	nop	word ptr [rax + rax]
.label_634:
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_629
	sub	qword ptr [rsp + 0x20], r13
	mov	rax, qword ptr [rsp + 0x98]
	add	qword ptr [rax], r13
	mov	ebx, r14d
	and	bl, 1
	mov	r9, r15
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x18], r15
	mov	dword ptr [rsp + 8], r12d
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	r10d, ebx
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_624
	test	r12, r12
	je	.label_624
	not	rbp
	mov	rax, r13
	not	rax
	cmp	rbp, rax
	cmova	rax, rbp
	mov	rdx, -2
	sub	rdx, rax
	mov	rsi, rdi
	nop	word ptr [rax + rax]
.label_626:
	cmp	byte ptr [rsi], 0
	jne	.label_623
	mov	r14b, 1
	test	rdx, rdx
	je	.label_624
	inc	rsi
	mov	eax, edx
	dec	rdx
	test	al, 0xf
	jne	.label_626
	inc	rdx
	mov	rbp, rdi
	mov	r14, r8
	mov	rbx, r9
	mov	r15d, r10d
	call	memcmp
	mov	r10d, r15d
	mov	r9, rbx
	mov	rdi, rbp
	mov	r8, r14
	test	eax, eax
	sete	r14b
	jmp	.label_624
.label_623:
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_624:
	mov	ebx, r14d
	and	bl, 1
	sete	al
	cmp	bl, r10b
	setne	sil
	test	r8, r8
	setne	cl
	cmp	r13, r12
	sete	dl
	and	dl, al
	test	r12, r12
	sete	r15b
	or	r15b, dl
	and	cl, sil
	jne	.label_622
	test	r15b, r15b
	jne	.label_622
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	r8, rax
	ja	.label_630
	add	r8, r12
	mov	rbp, r12
	jmp	.label_628
	nop	word ptr cs:[rax + rax]
.label_622:
	test	cl, 1
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	add	r8, rbp
	test	r10b, r10b
	mov	qword ptr [rsp + 0x28], rdi
	mov	byte ptr [rsp + 3], cl
	je	.label_636
	mov	eax, dword ptr [rsp + 0xc]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rcx, r8
	call	create_hole
	test	al, al
	jne	.label_613
	jmp	.label_620
.label_636:
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r9
	mov	rdx, r8
	mov	qword ptr [rsp + 0x10], r8
	call	full_write
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_625
.label_613:
	test	r15b, r15b
	je	.label_627
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 3], 1
	mov	eax, 0
	cmove	r12, rax
	mov	r8, r12
	jmp	.label_631
	nop	word ptr cs:[rax + rax]
.label_627:
	mov	r8, r12
	mov	rbp, r12
.label_631:
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r9, rdi
.label_628:
	mov	r15, qword ptr [rsp + 0x18]
	mov	r12d, dword ptr [rsp + 8]
	add	rdi, rbp
	sub	r13, rbp
	jne	.label_635
	mov	rax, qword ptr [rsp + 0xa0]
	mov	byte ptr [rax], bl
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rsi, rcx
	mov	rbx, rcx
	cmovb	rbx, rsi
	test	rsi, rsi
	jne	.label_615
.label_629:
	test	r14b, 1
	je	.label_614
	mov	eax, dword ptr [rsp + 0xc]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rcx, r8
	call	create_hole
	test	al, al
	je	.label_620
.label_614:
	mov	r14b, 1
	jmp	.label_616
.label_621:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_632
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x80]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_637
.label_620:
	xor	r14d, r14d
	jmp	.label_616
.label_630:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_619
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x80]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_637:
	mov	rdx, rbx
.label_617:
	call	error
.label_616:
	mov	eax, r14d
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_625:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_633
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x88]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_617
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebx, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	js	.label_638
	mov	r15b, 1
	test	r12b, r12b
	je	.label_639
	sub	rax, rbp
	mov	esi, 3
	mov	edi, ebx
	mov	rdx, rax
	mov	rcx, rbp
	call	fallocate
	test	eax, eax
	jns	.label_639
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_639
	cmp	ebp, 0x5f
	je	.label_639
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_640
.label_638:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_640:
	call	error
.label_639:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408480

	.globl forget_created
	.type forget_created, @function
forget_created:
	push	rbx
	sub	rsp, 0x20
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, qword ptr [rip + src_to_dest]
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_641
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
.label_641:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084d0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084f0

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rip + src_to_dest]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_642
	mov	rax, qword ptr [rcx + 0x10]
.label_642:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x408520

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi, qword ptr [rip + src_to_dest]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_643
	xor	eax, eax
	cmp	r14, rbx
	je	.label_644
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r14 + 0x10]
.label_644:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_643:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085a0

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [rip + src_to_dest],  rax
	test	rax, rax
	je	.label_645
	pop	rax
	ret	
.label_645:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4085d0

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4085e0

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_646
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_646:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408600
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi, qword ptr [rip + src_to_dest]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408610

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408640

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 8]
	mov	r12, qword ptr [r14 + 0x28]
	movabs	r13, 0x7fffffffffffffff
	xor	r15d, r15d
.label_649:
	xor	esi, esi
	mov	edx, 0xff0
	lea	rdi, [rsp + 0x18]
	call	memset
	mov	qword ptr [rsp + 8], rbx
	mov	eax, dword ptr [r14 + 0x10]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rsp + 0x20], 0x48
	not	rbx
	mov	qword ptr [rsp + 0x10], rbx
	mov	edi, dword ptr [r14]
	mov	esi, 0xc020660b
	xor	eax, eax
	lea	rdx, [rsp + 8]
	call	ioctl
	test	eax, eax
	js	.label_666
	mov	ecx, dword ptr [rsp + 0x1c]
	test	rcx, rcx
	je	.label_668
	mov	rax, qword ptr [r14 + 0x18]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_647
	add	rax, rcx
	mov	qword ptr [r14 + 0x18], rax
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	jae	.label_659
	mov	rdi, qword ptr [r14 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	qword ptr [r14 + 0x28], rax
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x1c]
	test	r8d, r8d
	je	.label_661
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_653:
	mov	ecx, edx
	imul	rbx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rbx + 0x28]
	mov	rsi, qword ptr [rsp + rbx + 0x38]
	mov	rcx, r13
	sub	rcx, rsi
	cmp	rdi, rcx
	ja	.label_662
	test	r15d, r15d
	je	.label_671
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	mov	ecx, r9d
	and	ecx, 0xfffffffe
	mov	r10, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12]
	add	rbp, r10
	cmp	dword ptr [r12 + 0x10], ecx
	jne	.label_650
	cmp	rbp, rdi
	jne	.label_650
	add	r10, rsi
	mov	qword ptr [r12 + 8], r10
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_671:
	mov	rbp, qword ptr [r14 + 8]
	cmp	rbp, rdi
	ja	.label_667
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	jmp	.label_652
.label_650:
	cmp	rbp, rdi
	jbe	.label_652
.label_667:
	mov	rcx, rbp
	sub	rcx, rdi
	sub	rsi, rcx
	ja	.label_660
	lea	rcx, [rsp + rbx + 0x28]
	mov	qword ptr [rcx], rbp
	mov	qword ptr [rcx + 0x10], rsi
	dec	edx
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_652:
	mov	ecx, r15d
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	mov	qword ptr [rax + rcx*8], rdi
	mov	qword ptr [rax + rcx*8 + 8], rsi
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r15d
.label_663:
	inc	edx
	cmp	edx, r8d
	jb	.label_653
.label_661:
	test	byte ptr [r12 + 0x10], 1
	je	.label_664
	mov	byte ptr [r14 + 0x21], 1
.label_664:
	mov	cl, byte ptr [r14 + 0x21]
	cmp	r15d, 0x49
	jb	.label_669
	test	cl, cl
	jne	.label_670
	dec	r15d
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	qword ptr [r14 + 0x18], r15
	jmp	.label_648
	nop	word ptr cs:[rax + rax]
.label_669:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
	test	cl, cl
	jne	.label_651
.label_648:
	mov	rbx, qword ptr [r12 + 8]
	add	rbx, qword ptr [r12]
	mov	qword ptr [r14 + 8], rbx
	mov	al, 1
	cmp	r15d, 0x48
	jb	.label_649
	jmp	.label_654
.label_660:
	cmp	qword ptr [r14 + 8], 0
	je	.label_658
	xor	eax, eax
	jmp	.label_654
.label_666:
	cmp	qword ptr [r14 + 8], 0
	je	.label_658
	xor	eax, eax
	jmp	.label_654
.label_658:
	mov	byte ptr [r14 + 0x20], 1
	xor	eax, eax
	jmp	.label_654
.label_668:
	mov	byte ptr [r14 + 0x21], 1
	cmp	qword ptr [r14 + 8], 0
	setne	al
	jmp	.label_654
.label_670:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
.label_651:
	mov	al, 1
.label_654:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_662:
	mov	edi, OFFSET FLAT:label_655
	mov	esi, OFFSET FLAT:label_656
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_657
	call	__assert_fail
.label_647:
	mov	edi, OFFSET FLAT:label_665
	mov	esi, OFFSET FLAT:label_656
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_657
	call	__assert_fail
.label_659:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088d0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	test	r14d, r14d
	mov	qword ptr [rsp], rsi
	jns	.label_677
	mov	edi, r13d
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_673
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_677:
	cmp	r14d, 0x11
	jne	.label_673
	xor	bpl, 1
	jne	.label_673
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_679
	lea	r15, [rsp + 0x20]
	jmp	.label_675
.label_679:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_676
.label_675:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_676
	mov	dword ptr [rsp + 8], r13d
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x18], ebx
	mov	dword ptr [rsp + 0x1c], r14d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_672
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_674
.label_676:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_673
.label_672:
	mov	edi, ebx
	mov	rsi, r15
	mov	ebp, ebx
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_678
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_678:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r15
	call	unlinkat
.label_674:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_673
	mov	rdi, r15
	call	free
.label_673:
	mov	eax, r14d
	add	rsp, 0x128
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
	#Procedure 0x408a40

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	r8, rdx
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a60

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r14d, esi
	mov	r15, rdi
	test	ebp, ebp
	jns	.label_684
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_680
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_684:
	cmp	ebp, 0x11
	jne	.label_680
	xor	bl, 1
	jne	.label_680
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_686
	lea	r12, [rsp + 0x10]
	jmp	.label_682
.label_686:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_683
.label_682:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_683
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_685
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_681
.label_683:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_680
.label_685:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_681
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_681:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_680
	mov	rdi, r12
	call	free
.label_680:
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bc0

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_689
	cmp	ebp, -2
	jne	.label_690
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_687
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_688
.label_689:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_688:
	call	error
.label_690:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c50

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_691
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_691:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cb0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_695
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_698:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_693
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_696
.label_693:
	cmp	r13, r12
	jb	.label_697
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_699
	add	r12, r12
	jmp	.label_700
	nop	word ptr cs:[rax + rax]
.label_699:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_694
.label_700:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_698
	jmp	.label_695
.label_697:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_695
.label_694:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_692
.label_696:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_692:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_695:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x408dc0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408dd0

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
	je	.label_709
	test	r14, r14
	je	.label_701
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_706:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_705
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_702
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_704
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_705
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_705
.label_704:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_705:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_706
	jmp	.label_708
.label_709:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_708
.label_701:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_703:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_707
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_702
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_707
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_707:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_703
.label_708:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_702:
	mov	rax, rbx
	add	rsp, 0x28
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
	#Procedure 0x408f50
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
	je	.label_710
	mov	esi, OFFSET FLAT:label_711
	jmp	.label_712
.label_710:
	mov	esi, OFFSET FLAT:label_713
.label_712:
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
	#Procedure 0x408fc0

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
	mov	esi, OFFSET FLAT:label_714
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_719
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_716:
	test	r15, r15
	je	.label_718
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_715
.label_718:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_720
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_715:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_721
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_717:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_716
.label_719:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_722
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
.label_722:
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
	#Procedure 0x4090f0

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
	jns	.label_723
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_724
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_711
	jmp	.label_725
.label_724:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_713
.label_725:
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
.label_723:
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
	.align	16
	#Procedure 0x4091c0
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
	je	.label_726
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_727:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_726
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_727
.label_726:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409230

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_728
	mov	edi, OFFSET FLAT:label_731
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_729
	test	rbx, rbx
	je	.label_730
.label_728:
	mov	eax, OFFSET FLAT:label_729
	cmp	byte ptr [rbx], 0
	je	.label_730
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_729
	cmove	rax, rbx
.label_730:
	mov	qword ptr [rip + simple_backup_suffix],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409280

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	dword ptr [rsp + 0x44], ecx
	mov	r12d, edx
	mov	r15, rsi
	mov	dword ptr [rsp + 0x40], edi
	mov	rdi, r15
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	mov	rax, rbx
	mov	qword ptr [rsp + 0x28], rax
	add	rbp, rbx
	mov	rdi, qword ptr [rip + simple_backup_suffix]
	test	rdi, rdi
	jne	.label_755
	mov	edi, OFFSET FLAT:label_731
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_729
	test	rbx, rbx
	je	.label_748
	mov	edi, OFFSET FLAT:label_729
	cmp	byte ptr [rbx], 0
	je	.label_748
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:label_729
	cmove	rdi, rbx
.label_748:
	mov	qword ptr [rip + simple_backup_suffix],  rdi
.label_755:
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x58], rax
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x68], rdi
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_736
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x70], rcx
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x18], rcx
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp + 0x60], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp], rcx
	mov	r13, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0x10], r15
	nop	word ptr cs:[rax + rax]
.label_762:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcpy
	cmp	r12d, 1
	jne	.label_746
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
	jmp	.label_742
	nop	word ptr cs:[rax + rax]
.label_746:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	mov	dword ptr [rsp + 8], r12d
	je	.label_760
	call	rewinddir
	mov	rdi, qword ptr [rsp]
	jmp	.label_763
.label_760:
	movzx	ebp, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x40]
	mov	rsi, r13
	lea	rcx, [rsp + 0xc]
	call	opendirat
	mov	rdi, rax
	test	rdi, rdi
	je	.label_735
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
.label_763:
	mov	rax, rdi
	mov	qword ptr [rsp], rax
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_739
	mov	r14, r13
	mov	rax, qword ptr [rsp + 0x20]
	lea	r13, [rax + 4]
	lea	r12, [rax + 2]
	mov	eax, 2
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_734:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_749
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_749
	mov	rsi, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rbx + rsi + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_749
	lea	rcx, [rbx + rsi + 0x13]
	cmp	al, 0x39
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_757
	lea	rcx, [rbx + rsi + 0x17]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_753:
	cmp	al, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	edx, eax
	add	edx, -0x30
	inc	rbp
	cmp	edx, 0xa
	jb	.label_753
	inc	rbp
	jmp	.label_747
.label_757:
	mov	ebp, 1
.label_747:
	cmp	al, 0x7e
	jne	.label_737
	lea	rbx, [rbx + rsi + 0x15]
	cmp	byte ptr [rbx + rbp + 1], 0
	jne	.label_737
	cmp	qword ptr [rsp + 0x30], rbp
	jb	.label_741
	jne	.label_737
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcmp
	test	eax, eax
	jg	.label_737
.label_741:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x30], rcx
	lea	r15, [rax + rcx]
	cmp	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], rdx
	jae	.label_743
	mov	rax, r15
	shr	rax, 0x3e
	sete	cl
	shl	r15, cl
	mov	rdi, r14
	mov	rsi, r15
	call	realloc
	mov	rdx, qword ptr [rsp + 0x38]
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r15
	jne	.label_751
	jmp	.label_745
.label_743:
	mov	rax, r14
.label_751:
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	lea	r15, [rsi + rdx]
	mov	r14, rax
	mov	word ptr [rax + rcx + 1], 0x307e
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	mov	rsi, rbx
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	mov	cl, byte ptr [rbp + r15 + 1]
	jmp	.label_761
.label_759:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_761:
	cmp	cl, 0x39
	je	.label_759
	inc	cl
	mov	byte ptr [rax], cl
.label_737:
	mov	r15, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_749:
	mov	rdi, qword ptr [rsp]
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_734
	mov	r13, r14
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x38]
	jmp	.label_738
.label_735:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
	xor	eax, eax
.label_738:
	cmp	ecx, 1
	mov	qword ptr [rsp], rax
	je	.label_740
	cmp	ecx, 2
	je	.label_739
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_742
	jmp	.label_745
	nop	dword ptr [rax + rax]
.label_739:
	cmp	dword ptr [rsp + 8], 2
	jne	.label_740
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
.label_740:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_756
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_733
	test	r12d, r12d
	js	.label_758
	call	__errno_location
	mov	r14, r13
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	edi, r12d
	call	fpathconf
	cmp	dword ptr [r13], 1
	mov	r13, r14
	sbb	rax, 0
	jmp	.label_764
.label_756:
	mov	eax, 0xff
	jmp	.label_733
.label_758:
	movzx	r15d, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	mov	esi, 3
	mov	rdi, r13
	call	pathconf
	cmp	dword ptr [r12], 1
	sbb	rax, 0
	mov	word ptr [rbx], r15w
	mov	r15, qword ptr [rsp + 0x10]
.label_764:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	rax, rdx
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_733:
	cmp	rax, rbp
	jae	.label_744
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rcx, [r13 + rcx]
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_742
.label_744:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_742:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	r12d, dword ptr [rsp + 8]
	mov	r13, r14
	je	.label_750
	mov	edx, dword ptr [rsp + 0xc]
	test	edx, edx
	jns	.label_754
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_754:
	xor	r8d, r8d
	cmp	r12d, 1
	setne	r8b
	mov	rax, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, r15
	call	renameatu
	test	eax, eax
	je	.label_750
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_762
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_732
	call	closedir
.label_732:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_752
.label_750:
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_736
	call	closedir
	jmp	.label_736
.label_745:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_752:
	xor	r13d, r13d
.label_736:
	mov	rax, r13
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409860

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409870

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_765
	pop	rcx
	ret	
.label_765:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409890
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_766
	cmp	byte ptr [rsi], 0
	je	.label_766
	push	rax
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + backup_types]
	add	rsp, 8
.label_766:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_767
	cmp	byte ptr [rsi], 0
	je	.label_767
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_770
.label_767:
	mov	edi, OFFSET FLAT:label_768
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_769
	cmp	byte ptr [rax], 0
	je	.label_769
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_771
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_770:
	call	__xargmatch_internal
	mov	ecx, dword ptr [(rax * 4) + backup_types]
.label_769:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409940

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_772
	test	rsi, rsi
	je	.label_774
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_773:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_773
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_774
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_775
	jmp	.label_774
.label_772:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_774:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_775:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099b0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099c0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + stdin]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_777
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_777
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_777:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_779
	test	eax, eax
	jne	.label_779
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_779:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_781
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_780
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_687
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_778
.label_780:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_776
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_778:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409aa0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ab0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_786
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_784
	cmp	dword ptr [rbp], 0x20
	jne	.label_784
.label_786:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_783
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_784:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_785
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_782
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_687
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_783:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_782:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_776
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b70

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_787
	pop	rcx
	ret	
.label_787:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b90

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
.label_789:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_788
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_789
.label_788:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bd0

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
.label_793:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_790
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_793
.label_790:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_792
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_791
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_791:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_792:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c70

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_794:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_794
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_798
	nop	word ptr cs:[rax + rax]
.label_797:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_798:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_797
	test	dl, dl
	je	.label_796
	mov	ecx, esi
	and	cl, 1
	je	.label_795
	xor	esi, esi
.label_795:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_797
.label_796:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409cd0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_800:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_799
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_800
.label_799:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d00

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_801
	mov	rbx, rax
.label_801:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d30

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d40
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_802
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_802:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409d60

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_803
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_803:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_804
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_806
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_805
.label_806:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_805:
	mov	edx, dword ptr [rax]
.label_804:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e30

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_807
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_808
	cmp	rax, rbx
	je	.label_807
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_807:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_808:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409eb0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_809
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_809:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ef0

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_822
	cmp	ecx, 0x3fff
	jg	.label_812
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_814
	cmp	ecx, 0x2000
	jne	.label_815
	mov	cl, 0x63
	jmp	.label_810
.label_822:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_810
	cmp	edx, 0xa000
	je	.label_823
	cmp	edx, 0xc000
	jne	.label_815
	mov	cl, 0x73
	jmp	.label_810
.label_812:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_817
	cmp	ecx, 0x4000
	jne	.label_815
	mov	cl, 0x64
	jmp	.label_810
.label_814:
	mov	cl, 0x70
	jmp	.label_810
.label_817:
	mov	cl, 0x62
	jmp	.label_810
.label_815:
	mov	cl, 0x3f
	jmp	.label_810
.label_823:
	mov	cl, 0x6c
.label_810:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_820
	mov	cl, 0x2d
.label_820:
	mov	byte ptr [rsi + 1], cl
	mov	ecx, eax
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_826
	mov	cl, 0x2d
.label_826:
	test	bl, 8
	jne	.label_818
	mov	dl, cl
.label_818:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_827
	mov	cl, 0x2d
.label_827:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_825
	mov	cl, 0x2d
.label_825:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_811
	mov	cl, 0x2d
.label_811:
	test	bl, 4
	jne	.label_813
	mov	dil, cl
.label_813:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_819
	mov	r9b, 0x2d
.label_819:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_816
	mov	dl, 0x2d
.label_816:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_824
	mov	r8b, 0x2d
.label_824:
	test	bl, 2
	pop	rbx
	je	.label_821
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_821:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a020
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a030

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_828
	pop	rcx
	ret	
.label_828:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a050

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_833
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_832
	cmp	byte ptr [r15], 0x2f
	je	.label_832
	mov	r12b, 0x2f
	jmp	.label_829
.label_833:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_829
.label_832:
	xor	r12d, r12d
.label_829:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_831
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_830
	mov	qword ptr [rax], rbp
.label_830:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_831:
	add	rsp, 0x18
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
	#Procedure 0x40a130

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_834
	nop	word ptr [rax + rax]
.label_836:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_834
	test	rax, rax
	je	.label_835
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_836
	jmp	.label_834
.label_835:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_834:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a190
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1a0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1b0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1c0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_837
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_841
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_844:
	cmp	qword ptr [rcx], 0
	je	.label_838
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_840:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_840
	cmp	rdi, rax
	cmova	rax, rdi
.label_838:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_839
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_842:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_842
	cmp	rdi, rax
	cmova	rax, rdi
.label_839:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_844
.label_841:
	test	r8, r8
	je	.label_837
	cmp	qword ptr [rcx], 0
	je	.label_837
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_843:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_843
	cmp	rdx, rax
	cmova	rax, rdx
.label_837:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a280
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_845
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_849
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_855:
	cmp	qword ptr [rax], 0
	je	.label_846
	mov	rdx, rax
	nop	dword ptr [rax]
.label_848:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_848
	inc	r10
.label_846:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_850
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_853:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_853
	inc	r10
.label_850:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_855
	jmp	.label_847
.label_849:
	xor	r10d, r10d
.label_847:
	test	r8, r8
	je	.label_845
	cmp	qword ptr [rax], 0
	je	.label_845
	nop	dword ptr [rax]
.label_851:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_851
	inc	r10
.label_845:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_852
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_854
.label_852:
	xor	eax, eax
.label_854:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a340
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
	jae	.label_856
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_860
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_870:
	cmp	qword ptr [rax], 0
	je	.label_866
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_869:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_869
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_866:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_867
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_859:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_859
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_867:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_870
.label_860:
	test	r8, r8
	je	.label_856
	cmp	qword ptr [rax], 0
	je	.label_856
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_857:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_857
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_856:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_858
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_868
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_862]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_863]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_864]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_865
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_861
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
	.align	16
	#Procedure 0x40a4b0

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
	jae	.label_874
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_871
	add	rbx, rax
	je	.label_871
	cmp	rsi, r12
	je	.label_873
	xor	r15d, r15d
	nop	
.label_872:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_875
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_871
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_872
.label_873:
	mov	r15, r12
	jmp	.label_871
.label_875:
	mov	r15, qword ptr [rbx]
.label_871:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_874:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a530
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_876
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_879
	nop	word ptr cs:[rax + rax]
.label_878:
	add	rcx, 0x10
.label_879:
	cmp	rcx, rdx
	jae	.label_877
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_878
.label_876:
	ret	
.label_877:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a570
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
	jae	.label_882
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_883:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_880
	test	rdx, rdx
	jne	.label_883
	jmp	.label_881
.label_880:
	test	rdx, rdx
	je	.label_881
	mov	rax, qword ptr [rdx]
	jmp	.label_884
.label_881:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_885:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_884
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_885
.label_884:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_882:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a600
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_886
	xor	eax, eax
.label_888:
	cmp	qword ptr [r9], 0
	je	.label_887
	test	r9, r9
	je	.label_887
	mov	r8, r9
	nop	
.label_889:
	cmp	rax, rdx
	jae	.label_886
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_889
	mov	r8, qword ptr [rdi + 8]
.label_887:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_888
.label_886:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a650
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
	jae	.label_893
	xor	ebx, ebx
.label_892:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_894
	test	r13, r13
	je	.label_894
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_893
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_891:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_890
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_891
	jmp	.label_893
	nop	dword ptr [rax]
.label_890:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_894:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_892
.label_893:
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
	.align	16
	#Procedure 0x40a6f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_895
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_896:
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
	jne	.label_896
.label_895:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a730
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_897]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a750

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
	je	.label_900
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_905
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_910]
	jbe	.label_899
	movss	xmm1, dword ptr [rip + label_913]
	ucomiss	xmm1, xmm0
	jbe	.label_899
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_904]
	jbe	.label_899
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_899
	addss	xmm1, dword ptr [rip + label_910]
	ucomiss	xmm0, xmm1
	jbe	.label_899
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_898]
	ucomiss	xmm2, xmm0
	jb	.label_899
	ucomiss	xmm0, xmm1
	jbe	.label_899
.label_905:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_912
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_909
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_911
.label_909:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_911:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_902]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_903]
	jae	.label_899
.label_912:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_901
	nop	
.label_906:
	add	rbx, 2
.label_901:
	cmp	rbx, -1
	je	.label_899
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_908
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_907:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_908
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_907
.label_908:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_906
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_899
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_899
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_899
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
	jmp	.label_900
.label_899:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_900:
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
	#Procedure 0x40a970

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
	#Procedure 0x40a980

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a990
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_916
	nop	word ptr cs:[rax + rax]
.label_919:
	add	r14, 0x10
.label_916:
	cmp	r14, rax
	jae	.label_918
	cmp	qword ptr [r14], 0
	je	.label_919
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_920
	nop	word ptr cs:[rax + rax]
.label_915:
	test	cl, 1
	je	.label_914
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_914:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_915
.label_920:
	test	cl, cl
	je	.label_917
	mov	rdi, qword ptr [r14]
	call	rax
.label_917:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_919
.label_918:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa40

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_921
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_921
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_927
	nop	
.label_925:
	add	r15, 0x10
.label_927:
	cmp	r15, rax
	jae	.label_921
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_925
	test	r15, r15
	je	.label_925
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_931
.label_924:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_931:
	test	rbx, rbx
	jne	.label_924
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_925
.label_921:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_922
	nop	
.label_926:
	add	r15, 0x10
.label_922:
	cmp	r15, rax
	jae	.label_929
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_926
	nop	word ptr cs:[rax + rax]
.label_923:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_923
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_926
.label_929:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_928
.label_930:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_930
.label_928:
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
	#Procedure 0x40ab10

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
	jne	.label_938
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_943
	cvtsi2ss	xmm0, rsi
	jmp	.label_948
.label_943:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_948:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_902]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_903]
	jae	.label_934
.label_938:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_933
	nop	dword ptr [rax + rax]
.label_945:
	add	rbx, 2
.label_933:
	cmp	rbx, -1
	je	.label_934
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_942
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_941:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_942
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_941
.label_942:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_945
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_934
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_935
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_934
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
	je	.label_950
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_935
.label_950:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_944
	nop	
.label_936:
	add	r12, 0x10
.label_944:
	cmp	r12, r15
	jae	.label_932
	cmp	qword ptr [r12], 0
	je	.label_936
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_939
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_937:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_949
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_946
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_940
	nop	word ptr [rax + rax]
.label_946:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_940:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_937
.label_939:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_936
.label_932:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_947
	mov	rdi, qword ptr [rsp]
	call	free
.label_934:
	xor	ebp, ebp
.label_935:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_949:
	call	abort
.label_947:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ada0

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
	jae	.label_961
	test	dl, dl
	je	.label_952
	nop	dword ptr [rax]
.label_963:
	cmp	qword ptr [r13], 0
	je	.label_958
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_960
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_956:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_964
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_955
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_953
	nop	word ptr [rax + rax]
.label_955:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_953:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_956
	mov	rax, qword ptr [r15 + 8]
.label_960:
	mov	qword ptr [r13 + 8], 0
.label_958:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_963
	jmp	.label_961
	nop	word ptr cs:[rax + rax]
.label_952:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_951
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_957
	nop	word ptr [rax + rax]
.label_968:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_964
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_970
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_967
	nop	word ptr [rax + rax]
.label_970:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_967:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_968
	mov	r12, qword ptr [r13]
.label_957:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_959
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_965
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_969
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_971
	nop	dword ptr [rax + rax]
.label_965:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_962
.label_969:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_966
.label_971:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_962:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_951:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_952
.label_961:
	mov	al, 1
.label_954:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_966:
	xor	eax, eax
	jmp	.label_954
.label_964:
	call	abort
.label_959:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40afc0

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
	je	.label_995
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_995
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_984
	cmp	rsi, r14
	je	.label_975
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_979
	mov	rax, qword ptr [r12]
.label_974:
	test	rax, rax
	jne	.label_982
	jmp	.label_984
.label_975:
	mov	rax, r14
.label_982:
	xor	ebp, ebp
	test	r15, r15
	je	.label_987
	mov	qword ptr [r15], rax
	jmp	.label_987
.label_979:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_984
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_1001:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_998
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1000
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1001
.label_984:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1002
	cvtsi2ss	xmm1, rax
	jmp	.label_978
.label_1002:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_978:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_985
	cvtsi2ss	xmm0, rcx
	jmp	.label_992
.label_985:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_992:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_980
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_988
	ucomiss	xmm2, dword ptr [rip + label_910]
	jbe	.label_976
	movss	xmm3, dword ptr [rip + label_913]
	ucomiss	xmm3, xmm2
	jbe	.label_976
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_904]
	jbe	.label_976
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_976
	addss	xmm3, dword ptr [rip + label_910]
	ucomiss	xmm2, xmm3
	jbe	.label_976
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_898]
	ucomiss	xmm5, xmm4
	jb	.label_976
	ucomiss	xmm4, xmm3
	ja	.label_991
.label_976:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_993]
	jmp	.label_991
.label_988:
	mov	eax, OFFSET FLAT:default_tuning
.label_991:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_980
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_997
	mulss	xmm0, xmm2
.label_997:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_903]
	jae	.label_987
	movss	xmm1, dword ptr [rip + label_902]
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
	je	.label_987
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_995
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_980
	cmp	rsi, r14
	mov	rax, r14
	je	.label_983
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_972
	mov	rax, qword ptr [r12]
.label_983:
	test	rax, rax
	jne	.label_977
.label_980:
	cmp	qword ptr [r12], 0
	je	.label_973
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_981
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_986
.label_973:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_989]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_990
.label_981:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_987
.label_986:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_990:
	mov	ebp, 1
.label_987:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_998:
	mov	rax, r14
	jmp	.label_974
.label_1000:
	mov	rax, qword ptr [rbp]
	jmp	.label_974
.label_972:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_980
	lea	rbp, [rbx + rbp + 8]
.label_996:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_999
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_994
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_996
	jmp	.label_980
.label_999:
	mov	rax, r14
	jmp	.label_983
.label_994:
	mov	rax, qword ptr [rbp]
	jmp	.label_983
.label_995:
	call	abort
.label_977:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b300

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
	je	.label_1003
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_1003:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b330

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
	jae	.label_1018
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1014
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1024
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_1004
	mov	r14, qword ptr [r13]
.label_1024:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1007
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_1009
.label_1004:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1014
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1022:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1019
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_1021
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_1022
	jmp	.label_1014
.label_1007:
	mov	qword ptr [r13], 0
	jmp	.label_1009
.label_1019:
	mov	rcx, rax
	jmp	.label_1006
.label_1021:
	mov	r14, qword ptr [rcx]
.label_1006:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_1009:
	xor	r12d, r12d
	test	r14, r14
	je	.label_1014
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_1013
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_1017
	cvtsi2ss	xmm1, rax
	jmp	.label_1020
.label_1017:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1020:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1023
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_1005
.label_1023:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1005:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1013
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1015
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_910]
	jbe	.label_1010
	movss	xmm4, dword ptr [rip + label_913]
	ucomiss	xmm4, xmm3
	jbe	.label_1010
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1010
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_904]
	jbe	.label_1010
	movss	xmm4, dword ptr [rip + label_910]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_1010
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_898]
	ucomiss	xmm5, xmm3
	jb	.label_1010
	ucomiss	xmm3, xmm4
	ja	.label_1008
.label_1010:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1008
.label_1015:
	mov	eax, OFFSET FLAT:default_tuning
.label_1008:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_1013
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1016
	mulss	xmm0, dword ptr [rax + 8]
.label_1016:
	movss	xmm1, dword ptr [rip + label_902]
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
	jne	.label_1013
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1012
	nop	word ptr cs:[rax + rax]
.label_1011:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1011
.label_1012:
	mov	qword ptr [r15 + 0x48], 0
.label_1013:
	mov	r12, r14
.label_1014:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1018:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5d0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b600

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b610

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1025
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1026
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_1025:
	xor	eax, eax
	ret	
.label_1026:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b640
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1027
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1028
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_1027:
	xor	eax, eax
	ret	
.label_1028:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b670

	.globl triple_free
	.type triple_free, @function
triple_free:
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
	#Procedure 0x40b690

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1030
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1029
	mov	dword ptr [r14], ebp
	jmp	.label_1030
.label_1029:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_1030:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b6e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1031
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1033
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1035
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1033
	mov	esi, OFFSET FLAT:label_1034
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1036
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1036:
	mov	rbx, r14
.label_1033:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1031:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1032
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b790

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_1037
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_1037:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b7e0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b810
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
	#Procedure 0x40b850
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
	#Procedure 0x40b860
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
	#Procedure 0x40b870
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
	.align	16
	#Procedure 0x40b8b0
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
	#Procedure 0x40b8d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1038
	test	rdx, rdx
	je	.label_1038
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1038:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b900
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
	.align	16
	#Procedure 0x40b980

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
	jmp	.label_1077
	nop	
.label_1073:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_1053
	or	al, dl
	jne	.label_1053
	test	dil, 1
	jne	.label_1069
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1053
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_1077
	jmp	.label_1053
.label_1660:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_1084
	test	rbp, rbp
	je	.label_1157
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_1157:
	mov	r14d, 1
	jmp	.label_1088
.label_1661:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1090
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_1091
.label_1084:
	xor	r14d, r14d
.label_1088:
	mov	eax, OFFSET FLAT:label_1090
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_1104
	nop	
.label_1077:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1111
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_1117]
.label_1662:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_1123
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_1052
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1663:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_1136
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1136
	xor	r14d, r14d
	nop	
.label_1146:
	cmp	r14, rbp
	jae	.label_1143
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_1143:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1146
.label_1136:
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
	jmp	.label_1091
.label_1655:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1091
.label_1658:
	mov	al, 1
.label_1656:
	mov	r12b, 1
.label_1659:
	test	r12b, 1
	mov	cl, 1
	je	.label_1163
	mov	ecx, eax
.label_1163:
	mov	al, cl
.label_1657:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_1165
	test	rbp, rbp
	je	.label_1043
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_1043:
	mov	r14d, 1
	jmp	.label_1047
.label_1165:
	xor	r14d, r14d
.label_1047:
	mov	ecx, OFFSET FLAT:label_1052
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_1104:
	mov	sil, r12b
.label_1091:
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
	jmp	.label_1059
	nop	word ptr cs:[rax + rax]
.label_1061:
	inc	r12
.label_1059:
	cmp	r11, -1
	je	.label_1096
	cmp	r12, r11
	jne	.label_1099
	jmp	.label_1102
	nop	word ptr cs:[rax + rax]
.label_1096:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_1147
.label_1099:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_1112
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_1115
	cmp	r11, -1
	jne	.label_1115
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1115:
	cmp	rbx, r11
	jbe	.label_1129
.label_1112:
	xor	esi, esi
.label_1155:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_1130
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1133]
.label_1720:
	test	r12, r12
	jne	.label_1072
	jmp	.label_1137
	nop	word ptr cs:[rax + rax]
.label_1129:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_1145
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_1155
	jmp	.label_1044
.label_1145:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_1155
.label_1724:
	xor	eax, eax
	cmp	r11, -1
	je	.label_1159
	test	r12, r12
	jne	.label_1162
	cmp	r11, 1
	je	.label_1137
	xor	r13d, r13d
	jmp	.label_1067
.label_1713:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1040
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1044
	cmp	r8d, 2
	jne	.label_1050
	mov	eax, r9d
	and	al, 1
	jne	.label_1050
	cmp	r14, rbp
	jae	.label_1103
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1103:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1054
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1054:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1062
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1062:
	add	r14, 3
	mov	r9b, 1
.label_1050:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_1068
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_1068:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_1120
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_1120
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1120
	cmp	r14, rbp
	jae	.label_1071
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_1071:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_1051
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_1051:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1067
.label_1714:
	mov	bl, 0x62
	jmp	.label_1097
.label_1715:
	mov	cl, 0x74
	jmp	.label_1045
.label_1716:
	mov	bl, 0x76
	jmp	.label_1097
.label_1717:
	mov	bl, 0x66
	jmp	.label_1097
.label_1718:
	mov	cl, 0x72
	jmp	.label_1045
.label_1721:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_1109
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1058
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
	jae	.label_1118
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1118:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1131
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_1131:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1135
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1135:
	add	r14, 3
	xor	r9d, r9d
.label_1109:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1067
.label_1722:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_1138
	cmp	r8d, 2
	jne	.label_1072
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1072
	jmp	.label_1058
.label_1723:
	cmp	r8d, 2
	jne	.label_1149
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1058
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_1074
.label_1130:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_1156
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_1160
.label_1159:
	test	r12, r12
	jne	.label_1048
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_1048
.label_1137:
	mov	dl, 1
.label_1719:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_1058
	xor	eax, eax
	mov	r13b, dl
.label_1067:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_1060
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_1063
	jmp	.label_1066
	nop	word ptr cs:[rax + rax]
.label_1060:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_1066
.label_1063:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1070
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_1079
	nop	dword ptr [rax]
.label_1066:
	test	sil, sil
.label_1079:
	mov	ebx, r15d
	je	.label_1083
	jmp	.label_1086
.label_1070:
	mov	ebx, r15d
	jmp	.label_1086
.label_1040:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_1061
	xor	r15d, r15d
	jmp	.label_1072
.label_1149:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_1045
	xor	eax, eax
	mov	r15b, 0x5c
.label_1074:
	xor	r13d, r13d
	jmp	.label_1083
.label_1045:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_1058
.label_1097:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_1067
	nop	
.label_1086:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1044
	cmp	r8d, 2
	jne	.label_1110
	mov	eax, r9d
	and	al, 1
	jne	.label_1110
	cmp	r14, rbp
	jae	.label_1114
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1114:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1093
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1093:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1108
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1108:
	add	r14, 3
	mov	r9b, 1
.label_1110:
	cmp	r14, rbp
	jae	.label_1141
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1141:
	inc	r14
	jmp	.label_1164
.label_1156:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_1134
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1134:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_1095
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_1089:
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
	je	.label_1150
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_1161
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1049
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_1041
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_1065:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1153
	bt	rsi, rdx
	jb	.label_1058
.label_1153:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_1065
.label_1041:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_1064
	xor	r13d, r13d
.label_1064:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1089
	jmp	.label_1081
.label_1120:
	xor	r13d, r13d
	jmp	.label_1067
.label_1048:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_1067
.label_1138:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_1072
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_1072
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_1072
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1094
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1119
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1106
	cmp	r14, rbp
	jae	.label_1107
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_1107:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1113
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1113:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1082
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1082:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_1116
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_1116:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_1119:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_1067
.label_1072:
	xor	eax, eax
.label_1162:
	xor	r13d, r13d
	jmp	.label_1067
.label_1095:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1101:
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
	je	.label_1152
	cmp	rbp, -1
	je	.label_1148
	cmp	rbp, -2
	je	.label_1150
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_1154
	xor	r13d, r13d
.label_1154:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1101
	jmp	.label_1081
.label_1150:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_1046
	lea	rax, [r10 + r12]
.label_1126:
	cmp	byte ptr [rax + rsi], 0
	je	.label_1046
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_1126
.label_1046:
	mov	qword ptr [rsp + 0x40], rsi
.label_1161:
	xor	r13d, r13d
	jmp	.label_1049
.label_1148:
	xor	r13d, r13d
.label_1152:
	mov	r10, qword ptr [rsp + 0x28]
.label_1049:
	mov	r12, qword ptr [rsp + 0x40]
.label_1081:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_1160:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_1057
	test	al, al
	je	.label_1057
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1067
.label_1057:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1075
	nop	word ptr [rax + rax]
.label_1080:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_1075:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_1085
	test	sil, 1
	je	.label_1092
	cmp	r14, rbp
	jae	.label_1087
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_1087:
	inc	r14
	xor	esi, esi
	jmp	.label_1092
	nop	word ptr cs:[rax + rax]
.label_1085:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1044
	cmp	r8d, 2
	jne	.label_1100
	mov	eax, r9d
	and	al, 1
	jne	.label_1100
	cmp	r14, rbp
	jae	.label_1105
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1105:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1139
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_1139:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1128
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_1128:
	add	r14, 3
	mov	r9b, 1
.label_1100:
	cmp	r14, rbp
	jae	.label_1121
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1121:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1125
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1125:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1132
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1132:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1092:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_1083
	test	r9b, 1
	je	.label_1140
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_1098
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_1144
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_1144:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_1151
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_1151:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_1140
	nop	word ptr cs:[rax + rax]
.label_1098:
	mov	rbx, rcx
.label_1140:
	cmp	r14, rbp
	jae	.label_1080
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_1080
	nop	
.label_1083:
	test	r9b, 1
	je	.label_1039
	and	al, 1
	jne	.label_1039
	cmp	r14, rbp
	jae	.label_1042
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1042:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1122
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1122:
	add	r14, 2
	xor	r9d, r9d
.label_1039:
	mov	ebx, r15d
.label_1164:
	cmp	r14, rbp
	jae	.label_1055
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_1055:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_1061
.label_1094:
	xor	r13d, r13d
	jmp	.label_1067
	nop	word ptr cs:[rax + rax]
.label_1102:
	mov	rcx, r12
.label_1147:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1073
	or	al, dl
	jne	.label_1073
	mov	r11, rcx
	jmp	.label_1044
.label_1058:
	mov	eax, 2
.label_1158:
	mov	qword ptr [rsp + 0x38], rax
.label_1044:
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
.label_1078:
	mov	r14, rax
.label_1142:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1053:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_1056
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_1076
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1076
	inc	rdx
	nop	dword ptr [rax + rax]
.label_1127:
	cmp	r14, rbp
	jae	.label_1124
	mov	byte ptr [rcx + r14], al
.label_1124:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1127
	jmp	.label_1076
.label_1069:
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
	jmp	.label_1078
.label_1056:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1076:
	cmp	r14, rbp
	jae	.label_1142
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1142
.label_1106:
	mov	eax, 5
	jmp	.label_1158
.label_1111:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c7b0
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
	.align	16
	#Procedure 0x40c880
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
	je	.label_1166
	mov	qword ptr [rax], rbx
.label_1166:
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
	.align	16
	#Procedure 0x40c970
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1167
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1170:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1170
.label_1167:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1171
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1169], OFFSET FLAT:slot0
.label_1171:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1168
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1168:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca10
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ca20

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
	js	.label_1172
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1175
	cmp	r12d, 0x7fffffff
	je	.label_1177
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
	jne	.label_1173
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1173:
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
.label_1175:
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
	jbe	.label_1178
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1174
.label_1178:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1176
	mov	rdi, r14
	call	free
.label_1176:
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
.label_1174:
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
.label_1172:
	call	abort
.label_1177:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cbe0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbf0
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
	#Procedure 0x40cc10
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
	#Procedure 0x40cc30

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
	je	.label_1179
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
.label_1179:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cca0
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
	je	.label_1180
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
.label_1180:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd10

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
	je	.label_1181
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
.label_1181:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd80
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
	je	.label_1182
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
.label_1182:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdf0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
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
	.align	16
	#Procedure 0x40ce60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
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
	.align	16
	#Procedure 0x40ced0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
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
	.align	16
	#Procedure 0x40cf30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
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
	.align	16
	#Procedure 0x40cf90

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
	je	.label_1186
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
.label_1186:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d030
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1187
	test	rdx, rdx
	je	.label_1187
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1187:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d0a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1188
	test	rdx, rdx
	je	.label_1188
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1188:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d110
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1189
	test	rsi, rsi
	je	.label_1189
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1189:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d180
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1183]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1184]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1185]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1190
	test	rsi, rsi
	je	.label_1190
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
.label_1190:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d1f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d200
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
	#Procedure 0x40d220

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d240

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
	#Procedure 0x40d260

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
	jne	.label_1196
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1192
	cmp	ecx, 0x55
	jne	.label_1191
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1191
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1191
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1191
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1191
	cmp	byte ptr [rax + 5], 0
	jne	.label_1191
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1198
	mov	eax, OFFSET FLAT:label_1199
	jmp	.label_1195
.label_1192:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1191
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1191
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1191
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1191
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1191
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1191
	cmp	byte ptr [rax + 7], 0
	je	.label_1197
.label_1191:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1090
	mov	eax, OFFSET FLAT:label_1052
.label_1195:
	cmove	rax, rcx
.label_1196:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1197:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1193
	mov	eax, OFFSET FLAT:label_1194
	jmp	.label_1195
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d330

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r12d, r8d
	mov	r13, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r13
	mov	r9d, r12d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	mov	rcx, rax
	test	ebx, ebx
	jns	.label_1200
	mov	eax, dword ptr [rcx]
	cmp	eax, 0x16
	je	.label_1202
	cmp	eax, 0x5f
	je	.label_1202
	cmp	eax, 0x26
	jne	.label_1200
.label_1202:
	test	r12d, r12d
	je	.label_1205
	cmp	r12d, 1
	jne	.label_1206
	mov	rbx, rcx
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	mov	rcx, rbx
	test	eax, eax
	je	.label_1201
	mov	eax, dword ptr [rcx]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1211
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1200
.label_1201:
	mov	dword ptr [rcx], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_1200
.label_1205:
	xor	r12d, r12d
.label_1211:
	mov	qword ptr [rsp], rcx
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_1204
	test	rax, rax
	je	.label_1204
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_1209
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1204
.label_1209:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1200
	test	r12b, r12b
	je	.label_1207
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	je	.label_1204
	mov	dword ptr [rax], 2
	jmp	.label_1200
.label_1206:
	mov	dword ptr [rcx], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_1200
.label_1207:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1210
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1200
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1204
	jmp	.label_1200
.label_1210:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1203
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	jne	.label_1208
.label_1204:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_1200:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1203:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_1200
.label_1208:
	mov	dword ptr [rax], 0x15
	jmp	.label_1200
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d530

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_1213:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1212
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1213
	cmp	rbx, 0x7ff00001
	jb	.label_1212
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1213
.label_1212:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d590

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d5b0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_1215
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1216
.label_1215:
	xor	ebp, ebp
.label_1220:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1216:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 8]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_1217
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_687
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1217:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1218
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_687
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1218:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1219
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1214
.label_1219:
	xor	ebp, ebp
.label_1214:
	mov	rdi, rbx
	call	free
	jmp	.label_1220
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d700

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rdi
	mov	eax, esi
	xor	r15d, r15d
	test	r12, r12
	je	.label_1221
	mov	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	dec	rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	rax, 2
	jae	.label_1231
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	xor	r14d, r14d
	jmp	.label_1236
.label_1231:
	xor	r14d, r14d
	xor	ebx, ebx
	xor	eax, eax
	jmp	.label_1244
.label_1242:
	inc	rcx
	mov	rdi, r15
	mov	r15, rcx
	call	xstrdup
	mov	rcx, r13
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r13
	add	r14, r15
	jmp	.label_1236
	nop	word ptr cs:[rax + rax]
.label_1240:
	movzx	eax, byte ptr [rbp + 0x13]
	cmp	al, 0x2e
	jne	.label_1225
	xor	eax, eax
	cmp	byte ptr [rbp + 0x14], 0x2e
	sete	al
	movzx	eax, byte ptr [rbp + rax + 0x14]
.label_1225:
	test	al, al
	jne	.label_1234
.label_1236:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1240
	jmp	.label_1243
.label_1234:
	mov	r15, rbp
	add	r15, 0x13
	mov	rdi, r15
	call	strlen
	mov	rcx, rax
	cmp	qword ptr [rsp + 8], r13
	jne	.label_1242
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], rcx
	je	.label_1241
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_1227
	mov	rax, r13
	shr	rax, 1
	lea	rcx, [r13 + rax + 1]
	jmp	.label_1237
.label_1241:
	test	r13, r13
	mov	rcx, r13
	mov	eax, 8
	cmove	rcx, rax
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1227
.label_1237:
	mov	rax, rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsi, rcx
	shl	rsi, 4
	mov	rdi, rbx
	call	xrealloc
	mov	rbx, rax
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1242
.label_1243:
	mov	r12, rbx
	xor	eax, eax
	jmp	.label_1245
	nop	
.label_1224:
	add	r14, rbx
	mov	rdi, r14
	mov	rsi, rbp
	call	memcpy
	mov	r14, r13
	mov	rax, rbx
	mov	rbx, r15
.label_1244:
	mov	qword ptr [rsp], rax
	nop	dword ptr [rax + rax]
.label_1239:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1228
	movzx	eax, byte ptr [rbp + 0x13]
	cmp	al, 0x2e
	jne	.label_1233
	xor	eax, eax
	cmp	byte ptr [rbp + 0x14], 0x2e
	sete	al
	movzx	eax, byte ptr [rbp + rax + 0x14]
.label_1233:
	test	al, al
	je	.label_1239
	add	rbp, 0x13
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbx
	sub	rcx, r14
	cmp	rcx, rdx
	lea	r13, [rax + r14 + 1]
	jbe	.label_1238
	mov	r15, rbx
	mov	rbx, qword ptr [rsp]
	jmp	.label_1224
.label_1238:
	cmp	r13, r14
	jb	.label_1246
	cmp	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rdx
	je	.label_1248
	movabs	rax, 0x5555555555555554
	cmp	r13, rax
	jae	.label_1246
	mov	rax, r13
	shr	rax, 1
	lea	rsi, [r13 + rax + 1]
	jmp	.label_1235
.label_1248:
	test	r13, r13
	mov	rsi, r13
	mov	eax, 0x80
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_1230
.label_1235:
	mov	rdi, qword ptr [rsp]
	mov	r15, rsi
	call	xrealloc
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1224
.label_1228:
	mov	rax, rbx
	xor	r12d, r12d
	xor	r13d, r13d
.label_1245:
	mov	ebx, dword ptr [r15]
	test	ebx, ebx
	je	.label_1226
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp]
	call	free
	mov	dword ptr [r15], ebx
	xor	r15d, r15d
	jmp	.label_1221
.label_1226:
	cmp	qword ptr [rsp + 0x20], 1
	ja	.label_1249
	test	r13, r13
	je	.label_1223
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [(rax * 8) + comparison_function_table]
	mov	edx, 0x10
	mov	rbx, r12
	mov	rdi, rbx
	mov	rsi, r13
	call	qsort
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1232:
	lea	rbp, [r15 + r14]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r14
	sub	r14, rbp
	add	r14, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r13
	jne	.label_1232
	jmp	.label_1229
.label_1249:
	cmp	rax, r14
	jne	.label_1247
	lea	rsi, [r14 + 1]
	mov	rdi, qword ptr [rsp]
	call	xrealloc
	mov	r15, rax
	jmp	.label_1222
.label_1247:
	mov	r15, qword ptr [rsp]
	jmp	.label_1222
.label_1223:
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
.label_1229:
	mov	rdi, r12
	call	free
.label_1222:
	mov	byte ptr [r15 + r14], 0
.label_1221:
	mov	rax, r15
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1246:
	call	xalloc_die
.label_1227:
	call	xalloc_die
.label_1230:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da50

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1250
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1250
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1250:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40daa0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dab0

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	cmp	rax, qword ptr [rsi + 8]
	seta	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dad0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebp, esi
	mov	r15, rdi
	call	__errno_location
	mov	r13, rax
	mov	r12d, dword ptr [r13]
	mov	rdi, r15
	call	strlen
	mov	rsi, rbx
	mov	r14, rax
	movsxd	rbx, ebp
	lea	rax, [rbx + rsi]
	cmp	r14, rax
	jb	.label_1251
	mov	rax, r14
	sub	rax, rsi
	sub	rax, rbx
	add	rax, r15
	mov	rcx, -1
	nop	dword ptr [rax]
.label_1259:
	cmp	byte ptr [rax + rcx + 1], 0x58
	lea	rcx, [rcx + 1]
	je	.label_1259
	cmp	rcx, rsi
	jae	.label_1261
.label_1251:
	mov	dword ptr [r13], 0x16
.label_1252:
	mov	eax, 0xffffffff
.label_1256:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1261:
	xor	edi, edi
	mov	qword ptr [rsp + 8], rsi
	call	randint_all_new
	mov	rbp, rax
	mov	eax, 0xffffffff
	test	rbp, rbp
	je	.label_1256
	mov	dword ptr [rsp + 0x1c], r12d
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x20], r15
	je	.label_1262
	neg	rax
	sub	r14, rbx
	add	r14, r15
	xor	r12d, r12d
	mov	qword ptr [rsp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_1253:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_1254:
	mov	esi, 0x3d
	mov	rdi, rbp
	call	randint_genmax
	movzx	eax, byte ptr [rax + letters]
	mov	byte ptr [r14 + rbx], al
	inc	rbx
	jne	.label_1254
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_1257
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_1260
	inc	r12d
	cmp	r12d, 0x3a2f8
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 8]
	jb	.label_1253
	jmp	.label_1258
.label_1262:
	xor	ebx, ebx
.label_1255:
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_1257
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_1260
	inc	ebx
	cmp	ebx, 0x3a2f7
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	jbe	.label_1255
.label_1258:
	mov	rdi, rbp
	call	randint_all_free
	mov	dword ptr [r13], 0x11
	jmp	.label_1252
.label_1257:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	dword ptr [r13], eax
	mov	r13d, eax
.label_1260:
	mov	rdi, rbp
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], r13d
	mov	eax, r15d
	jmp	.label_1256
	.section	.text
	.align	16
	#Procedure 0x40dc90
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1263
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1267]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1263:
	mov	edi, OFFSET FLAT:label_1264
	mov	esi, OFFSET FLAT:label_1265
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1266
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dcd0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dcf0

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd00

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_1268
	cmp	dword ptr [rax], 0x4b
	jne	.label_1269
.label_1268:
	mov	dword ptr [rax], 0x11
.label_1269:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd50
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1270
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1267]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_1270:
	mov	edi, OFFSET FLAT:label_1264
	mov	esi, OFFSET FLAT:label_1265
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1266
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40dd90
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dda0

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
	ja	.label_1271
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
	jmp	.label_1272
.label_1271:
	mov	eax, ebx
.label_1272:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ddf0

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de10

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	rbp, rdx
	mov	r14, qword ptr [rbp + 0x58]
	mov	r15, qword ptr [rbp + 0x60]
	mov	r12, qword ptr [rcx + 0x58]
	mov	r13d, dword ptr [rcx + 0x60]
	test	r8b, 1
	je	.label_1276
	cmp	r14, r12
	jne	.label_1286
	xor	ecx, ecx
	cmp	r15d, r13d
	je	.label_1279
.label_1286:
	lea	rax, [r12 - 2]
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1279
	lea	rax, [r14 - 2]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1279
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	jne	.label_1295
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	mov	qword ptr [rip + utimecmpat.ht],  rbx
	test	rbx, rbx
	je	.label_1291
.label_1295:
	mov	rsi, qword ptr [rip + utimecmpat.new_dst_res]
	test	rsi, rsi
	jne	.label_1285
	mov	edi, 0x10
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rip + utimecmpat.new_dst_res],  rsi
	test	rsi, rsi
	je	.label_1289
	mov	dword ptr [rsi + 8], 0x77359400
	mov	byte ptr [rsi + 0xc], 0
.label_1285:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_1296
	cmp	rax, qword ptr [rip + utimecmpat.new_dst_res]
	jne	.label_1273
	mov	qword ptr [rip + utimecmpat.new_dst_res],  0
	jmp	.label_1273
.label_1296:
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	je	.label_1277
.label_1289:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	hash_lookup
.label_1277:
	test	rax, rax
	jne	.label_1273
.label_1291:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rax, [rsp + 0x30]
.label_1273:
	mov	r10, qword ptr [rax + 8]
	movabs	rcx, 0xff00000000
	test	r10, rcx
	jne	.label_1287
	mov	qword ptr [rsp + 0x10], rax
	mov	r11, qword ptr [rbp + 0x48]
	mov	r9, qword ptr [rbp + 0x50]
	movsxd	r8, dword ptr [rbp + 0x70]
	mov	ecx, r11d
	or	ecx, r14d
	or	ecx, dword ptr [rbp + 0x68]
	and	ecx, 1
	movsxd	rdx, r9d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	imul	rsi, r8, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	edi, r8d
	sub	edi, esi
	movsxd	rsi, r15d
	imul	rsi, rsi, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	ebp, r15d
	sub	ebp, esi
	or	ebp, edx
	or	ebp, edi
	je	.label_1292
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 1
	mov	r10d, 1
.label_1284:
	mov	dword ptr [rax + 8], r10d
	mov	byte ptr [rax + 0xc], 1
.label_1287:
	xor	eax, eax
	cmp	r10d, 0x77359400
	sete	al
	not	rax
	and	r12, rax
	mov	eax, r13d
	cdq	
	idiv	r10d
	sub	r13d, edx
.label_1276:
	mov	ecx, 0xffffffff
	cmp	r14, r12
	jl	.label_1279
	mov	ecx, 1
	jg	.label_1279
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1279
	setg	al
	movzx	ecx, al
.label_1279:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1292:
	cmp	r10d, 0xb
	jl	.label_1288
	mov	qword ptr [rsp + 0x20], r11
	mov	ebx, 0xa
	mov	qword ptr [rsp + 0x18], r9
	mov	edx, r9d
	mov	edi, r15d
.label_1282:
	mov	r9, rbx
	movsxd	rsi, edi
	imul	rdi, rsi, 0x66666667
	mov	rsi, rdi
	shr	rsi, 0x3f
	sar	rdi, 0x22
	add	edi, esi
	movsxd	rax, r8d
	imul	r8, rax, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	movsxd	r11, edx
	imul	rsi, r11, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	r11d, esi
	movsxd	rsi, r8d
	imul	rbp, rsi, 0x66666667
	mov	rbx, rbp
	shr	rbx, 0x3f
	sar	rbp, 0x22
	add	ebp, ebx
	add	ebp, ebp
	lea	ebx, [rbp + rbp*4]
	sub	esi, ebx
	or	esi, r11d
	movsxd	rbp, edi
	imul	rbx, rbp, 0x66666667
	mov	rax, rbx
	shr	rax, 0x3f
	sar	rbx, 0x22
	add	ebx, eax
	add	ebx, ebx
	lea	eax, [rbx + rbx*4]
	sub	ebp, eax
	mov	rbx, r9
	or	ebp, esi
	jne	.label_1293
	cmp	ebx, 0x3b9aca00
	je	.label_1281
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	cmp	ebx, r10d
	jl	.label_1282
.label_1293:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	cmp	ebx, 2
	mov	r10d, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
	jl	.label_1284
	jmp	.label_1290
.label_1288:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 0xa
	mov	ebx, 0xa
	jmp	.label_1290
.label_1281:
	xor	ecx, 1
	mov	ebx, 0x3b9aca00
	shl	ebx, cl
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
.label_1290:
	xor	edi, edi
	cmp	ebx, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1279
	cmp	r14, r12
	setne	al
	cmp	r13d, r15d
	jg	.label_1280
	test	al, al
	je	.label_1279
.label_1280:
	mov	rax, rdi
	not	rax
	and	rax, r12
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jl	.label_1279
	jne	.label_1294
	mov	eax, r13d
	cdq	
	idiv	ebx
	mov	eax, r13d
	sub	eax, edx
	cmp	r15d, eax
	jl	.label_1279
.label_1294:
	mov	qword ptr [rsp + 0x40], r11
	movsxd	rax, r9d
	mov	qword ptr [rsp + 0x48], rax
	or	rdi, r14
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, ebx
	imul	rax, rax, 0x38e38e39
	shr	rax, 0x21
	add	eax, r15d
	cdqe	
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x28]
	call	utimensat
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1279
	mov	qword ptr [rsp + 0x18], rbx
	lea	rcx, [rsp + 0x68]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, eax
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0xc0]
	xor	rcx, r14
	or	rcx, rax
	movsxd	rax, r15d
	mov	rdx, qword ptr [rsp + 0xc8]
	xor	rdx, rax
	or	rdx, rcx
	je	.label_1297
	mov	qword ptr [rsp + 0x50], r14
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	utimensat
.label_1297:
	test	ebx, ebx
	je	.label_1278
	mov	ecx, 0xfffffffe
	jmp	.label_1279
.label_1278:
	mov	eax, dword ptr [rsp + 0xc0]
	and	eax, 1
	neg	eax
	and	eax, 0x3b9aca00
	add	rax, qword ptr [rsp + 0xc8]
	movsxd	rcx, eax
	imul	rdx, rcx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	mov	r10d, 1
	cmp	ecx, edx
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_1275
	mov	ecx, 1
.label_1283:
	mov	r10d, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1275
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, ebp
	je	.label_1274
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	r10d, ecx
	je	.label_1283
.label_1275:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1284
.label_1274:
	mov	r10d, ebp
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1284
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e360

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e370

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e380
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e390

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14, rsi
	mov	r15d, edi
	xor	ebx, ebx
	test	rdx, rdx
	lea	r13, [rsp]
	cmove	r13, rdx
	je	.label_1322
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1327
	cmp	rax, 0x3ffffffe
	jne	.label_1333
.label_1327:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1332
	cmp	rdi, 0x3ffffffe
	je	.label_1332
.label_1333:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	jmp	.label_1299
.label_1332:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1306
	mov	qword ptr [r13], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1306:
	cmp	rdi, 0x3ffffffe
	jne	.label_1310
	mov	qword ptr [r13 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1310:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1299
.label_1322:
	test	r15d, r15d
	jns	.label_1319
	test	r14, r14
	jne	.label_1319
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1299
.label_1319:
	cmp	dword ptr [rip + utimensat_works_really],  0
	js	.label_1312
	cmp	ebx, 2
	jne	.label_1325
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1326
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1328
.label_1326:
	mov	rsi, r14
	call	__xstat
.label_1328:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1299
	cmp	qword ptr [r13 + 8], 0x3ffffffe
	jne	.label_1331
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	mov	ebx, 3
	jmp	.label_1325
.label_1331:
	mov	ebx, 3
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	jne	.label_1325
	movups	xmm0, xmmword ptr [rsp + 0xc0]
	movaps	xmmword ptr [r13 + 0x10], xmm0
.label_1325:
	test	r15d, r15d
	jns	.label_1304
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	mov	rdx, r13
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1307
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1309
.label_1307:
	je	.label_1311
	call	__errno_location
.label_1309:
	cmp	dword ptr [rax], 0x26
	jne	.label_1311
.label_1304:
	test	r15d, r15d
	js	.label_1312
	mov	edi, r15d
	mov	rsi, r13
	call	futimens
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1314
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1317
.label_1311:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1299
.label_1314:
	je	.label_1320
	call	__errno_location
.label_1317:
	cmp	dword ptr [rax], 0x26
	jne	.label_1320
.label_1312:
	mov	dword ptr [rip + utimensat_works_really],  0xffffffff
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1321
	cmp	ebx, 3
	je	.label_1323
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1324
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1316
.label_1321:
	xor	r12d, r12d
	test	r13, r13
	jne	.label_1315
	jmp	.label_1305
.label_1320:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1299
.label_1324:
	mov	rsi, r14
	call	__xstat
.label_1316:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1299
.label_1323:
	test	r13, r13
	je	.label_1335
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1300
	cmp	rax, 0x3fffffff
	jne	.label_1298
	cmp	qword ptr [r13 + 0x18], 0x3fffffff
	jne	.label_1301
.label_1335:
	xor	r12d, r12d
	jmp	.label_1305
.label_1300:
	xor	ebp, ebp
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	je	.label_1299
	lea	rbx, [r13 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	jmp	.label_1308
.label_1298:
	lea	rbx, [r13 + 0x18]
	jmp	.label_1308
.label_1301:
	lea	rbx, [r13 + 0x18]
	mov	rdi, r13
	call	gettime
.label_1308:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1313
	cmp	rax, 0x3ffffffe
	jne	.label_1315
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	qword ptr [r13 + 0x10], rax
	mov	qword ptr [r13 + 0x18], rcx
	jmp	.label_1315
.label_1313:
	add	r13, 0x10
	mov	rdi, r13
	call	gettime
.label_1315:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x40], rax
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsp + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x48], rdx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, rcx
	imul	qword ptr [rsp + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x58], rdx
	lea	r12, [rsp + 0x40]
.label_1305:
	test	r15d, r15d
	js	.label_1330
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	call	futimesat
	test	eax, eax
	je	.label_1329
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1299
	mov	rdi, r14
	mov	rsi, r12
	call	utimes
	jmp	.label_1303
.label_1330:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1303:
	mov	ebp, eax
.label_1299:
	mov	eax, ebp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1329:
	test	r12, r12
	je	.label_1299
	mov	rbx, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x18]
	cmp	rbx, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_1299
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_1299
	lea	rdx, [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xc0]
	sub	rcx, qword ptr [r12]
	sub	rax, qword ptr [r12 + 0x10]
	movups	xmm0, xmmword ptr [r12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	xor	edx, edx
	cmp	rbx, 0x7a120
	jl	.label_1318
	cmp	rcx, 1
	jne	.label_1318
	xor	edx, edx
	cmp	qword ptr [rsp + 0xb8], 0
	jne	.label_1318
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x28], 0
.label_1318:
	cmp	r14, 0x7a120
	jl	.label_1302
	cmp	rax, 1
	jne	.label_1302
	cmp	qword ptr [rsp + 0xc8], 0
	je	.label_1337
.label_1302:
	test	rdx, rdx
	jne	.label_1334
	jmp	.label_1336
.label_1337:
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x38], 0
.label_1334:
	xor	esi, esi
	mov	edi, r15d
	call	futimesat
.label_1336:
	xor	ebp, ebp
	jmp	.label_1299
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e820

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e840

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xb0
	mov	r14, rdi
	xor	ebx, ebx
	test	rsi, rsi
	lea	r15, [rsp]
	mov	r12, r15
	cmove	r12, rsi
	je	.label_1350
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r12 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1357
	cmp	rax, 0x3ffffffe
	jne	.label_1341
.label_1357:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1344
	cmp	rdi, 0x3ffffffe
	je	.label_1344
.label_1341:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1359:
	mov	ebp, 0xffffffff
.label_1346:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1344:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1353
	mov	qword ptr [r12], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1353:
	cmp	rdi, 0x3ffffffe
	jne	.label_1360
	mov	qword ptr [r12 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1360:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1346
.label_1350:
	cmp	dword ptr [rip + lutimensat_works_really],  0
	js	.label_1351
	cmp	ebx, 2
	jne	.label_1338
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1346
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1356
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1338
.label_1356:
	mov	ebx, 3
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	jne	.label_1338
	movups	xmm0, xmmword ptr [rsp + 0x78]
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1338:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	mov	rdx, r12
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1348
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1349
.label_1348:
	je	.label_1343
	call	__errno_location
.label_1349:
	cmp	dword ptr [rax], 0x26
	jne	.label_1343
.label_1351:
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1352
	cmp	ebx, 3
	je	.label_1354
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1346
.label_1354:
	xor	edx, edx
	test	r12, r12
	je	.label_1339
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1340
	cmp	rax, 0x3fffffff
	jne	.label_1345
	xor	edx, edx
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1339
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	call	gettime
	jmp	.label_1342
.label_1343:
	mov	dword ptr [rip + utimensat_works_really],  1
	mov	dword ptr [rip + lutimensat_works_really],  1
	jmp	.label_1346
.label_1352:
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1346
	jmp	.label_1339
.label_1340:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1346
	lea	rbx, [r12 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	jmp	.label_1342
.label_1345:
	lea	rbx, [r12 + 0x18]
.label_1342:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1347
	cmp	rax, 0x3ffffffe
	jne	.label_1358
	mov	rax, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1358
.label_1347:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
.label_1358:
	mov	rdx, r15
.label_1339:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x38]
	cmp	eax, 0xa000
	jne	.label_1355
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1359
.label_1355:
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebp, eax
	jmp	.label_1346
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb20

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
	je	.label_1373
	mov	edx, OFFSET FLAT:label_1364
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1370
.label_1373:
	mov	edx, OFFSET FLAT:label_1371
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1375
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
	mov	esi, OFFSET FLAT:label_1372
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1376
	jmp	qword ptr [(r12 * 8) + label_1377]
.label_1568:
	add	rsp, 8
	jmp	.label_1363
.label_1376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1367
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
	jmp	.label_1363
.label_1569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1362
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
.label_1570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1368
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
.label_1571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1365
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
.label_1572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1379
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
	jmp	.label_1363
.label_1573:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1378
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
	jmp	.label_1363
.label_1574:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1361
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
	jmp	.label_1363
.label_1575:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1366
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
	jmp	.label_1363
.label_1577:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1369
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
	jmp	.label_1363
.label_1576:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1374
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
.label_1363:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee80
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1380:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1380
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eeb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1391
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1393
.label_1391:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1393:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1381
	cmp	r10d, 0x29
	jae	.label_1390
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1392
.label_1390:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1392:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1381
	cmp	r10d, 0x29
	jae	.label_1388
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1389
.label_1388:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1389:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1381
	cmp	r10d, 0x29
	jae	.label_1386
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1387
.label_1386:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1387:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1381
	cmp	r10d, 0x29
	jae	.label_1384
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1385
.label_1384:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1385:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1381
	cmp	r10d, 0x29
	jae	.label_1382
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1383
.label_1382:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1383:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1381
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1381
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1381
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1381
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1381:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f0a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1394
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1394:
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
	.align	16
	#Procedure 0x40f130
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1395
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1396
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1398
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1397
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1b0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	cmp	byte ptr [rip + can_write_any_file.initialized],  1
	jne	.label_1399
	mov	al, byte ptr [rip + can_write_any_file.can_write]
	ret	
.label_1399:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [rip + can_write_any_file.can_write]
	mov	byte ptr [rip + can_write_any_file.initialized],  1
	add	rsp, 8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f1e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1400
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1401
	test	rax, rax
	je	.label_1400
.label_1401:
	pop	rbx
	ret	
.label_1400:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f220

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1402
	test	rax, rax
	je	.label_1403
.label_1402:
	pop	rbx
	ret	
.label_1403:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f240
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1404
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1405
	test	rbx, rbx
	jne	.label_1405
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1405:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1406
	test	rax, rax
	je	.label_1404
.label_1406:
	pop	rbx
	ret	
.label_1404:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f290

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1407
	test	rbx, rbx
	jne	.label_1407
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1407:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1409
	test	rax, rax
	je	.label_1408
.label_1409:
	pop	rbx
	ret	
.label_1408:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40f2c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1410
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1413
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1411
.label_1410:
	test	rcx, rcx
	jne	.label_1416
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1416:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1412
.label_1411:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1415
	test	rbx, rbx
	jne	.label_1415
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1415:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1414
	test	rax, rax
	je	.label_1413
.label_1414:
	pop	rbx
	ret	
.label_1413:
	call	xalloc_die
.label_1412:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f360
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1417
	test	rax, rax
	je	.label_1418
.label_1417:
	pop	rbx
	ret	
.label_1418:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f380
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1419
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1422
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1423
	call	free
	xor	eax, eax
	jmp	.label_1420
.label_1419:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1421
	mov	qword ptr [rsi], rbx
.label_1423:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1420
	test	rax, rax
	je	.label_1421
.label_1420:
	pop	rbx
	ret	
.label_1421:
	call	xalloc_die
.label_1422:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f3f0
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
	je	.label_1425
	test	r14, r14
	je	.label_1424
.label_1425:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1424:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f430
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1426
	call	rpl_calloc
	test	rax, rax
	je	.label_1426
	pop	rcx
	ret	
.label_1426:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f460

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
	je	.label_1427
	test	r15, r15
	je	.label_1428
.label_1427:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1428:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f4a0

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
	je	.label_1430
	test	r15, r15
	je	.label_1429
.label_1430:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1429:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f4f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1431
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_687
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f520

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rcx, qword ptr [rip + stdin]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_1432
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_1434
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_1434:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1433
.label_1432:
	xor	ebx, ebx
.label_1433:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f590

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1435
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1436
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1436
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1435:
	mov	ecx, 1
.label_1436:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1437
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1437
	test	byte ptr [rbx + 1], 1
	je	.label_1437
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1437:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f620

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1438
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1439
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1439:
	add	rax, rcx
.label_1438:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f650

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
	jne	.label_1440
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1440
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1441
.label_1440:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1441:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1442
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1442:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f6c0

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
	je	.label_1443
	cmp	r15, -2
	jb	.label_1443
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1443
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1443:
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
	#Procedure 0x40f720

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f730

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f740
	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:

	cmp	esi, -1
	je	.label_1444
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1444:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f760

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	cmp	edx, -1
	je	.label_1445
	mov	edi, edx
	call	fchmod
	jmp	.label_1446
.label_1445:
	mov	rdi, rax
	call	chmod
.label_1446:
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f790

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
	jne	.label_1448
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1447
	test	cl, cl
	jne	.label_1447
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1447
.label_1448:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1447
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1447:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f7f0

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1452
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1450
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1451
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
	test	rbx, rbx
	jne	.label_1453
	mov	edi, ebp
	call	close
	jmp	.label_1449
.label_1450:
	mov	rbx, r14
	jmp	.label_1452
.label_1451:
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
.label_1449:
	xor	ebx, ebx
.label_1453:
	mov	rdi, r14
	call	closedir
	mov	dword ptr [r15], r12d
.label_1452:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f880

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f890
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f8b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1455
	cmp	byte ptr [rax], 0x43
	jne	.label_1457
	cmp	byte ptr [rax + 1], 0
	je	.label_1454
.label_1457:
	mov	esi, OFFSET FLAT:label_1456
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1455
.label_1454:
	xor	ebx, ebx
.label_1455:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f8f0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1458
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1459:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1459
.label_1458:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f920

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_67
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1460
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f950

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1461
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1461:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1462
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1464
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1463
.label_1464:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1463:
	mov	ecx, dword ptr [rax]
.label_1462:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fa10
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa30

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1465
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_1465:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa60
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa70

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1468:
	cmp	r14, r13
	jae	.label_1467
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1466:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_1466
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_1471:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_1471
.label_1467:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_1470
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	r14, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rbx, rdx
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_1468
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_1469
.label_1470:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1469:
	mov	rax, rcx
	add	rsp, 0x18
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
	#Procedure 0x40fb70
	.globl randint_free
	.type randint_free, @function
randint_free:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb90

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	mov	rdi, rbx
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fbe0

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
	je	.label_1476
	xor	ebx, ebx
	test	r14, r14
	je	.label_1478
	mov	esi, OFFSET FLAT:label_1479
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1473
.label_1478:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_1477
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_1473
.label_1476:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1473
.label_1477:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_1472
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1475
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
	js	.label_1475
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_1474
.label_1475:
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
	ja	.label_1474
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
	ja	.label_1474
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
	ja	.label_1474
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
	ja	.label_1474
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
.label_1474:
	mov	rdi, r14
	call	isaac_seed
.label_1473:
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
	#Procedure 0x40fe30
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fe40
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fe50

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
	je	.label_1485
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_1481
	nop	dword ptr [rax]
.label_1480:
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
.label_1481:
	sub	r15, rbp
	jne	.label_1480
	jmp	.label_1482
.label_1485:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1483
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1486:
	cmp	r15, 0x800
	jb	.label_1484
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1486
	jmp	.label_1487
.label_1484:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1483:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1487:
	mov	qword ptr [r14 + 0x18], r12
.label_1482:
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
	#Procedure 0x40ff70

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
	je	.label_1488
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1488:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ffb0

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
	je	.label_1489
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1492
	mov	esi, OFFSET FLAT:label_1490
	jmp	.label_1491
.label_1492:
	mov	esi, OFFSET FLAT:label_1493
.label_1491:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
.label_1768:
	mov	rdx, rbp
	call	error
.label_1489:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x410010

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
.label_1494:
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
	jb	.label_1494
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_1495:
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
	jb	.label_1495
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x410290

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
.label_1496:
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
	jl	.label_1496
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1497:
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
	jl	.label_1497
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
	#Procedure 0x4104f0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x410500

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
	#Procedure 0x410510

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1498
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1500
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1498
.label_1500:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1498
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1499
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1499:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1498:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410590

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1504
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1504:
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
	ja	.label_1510
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1506
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1507
	test	esi, esi
	jne	.label_1510
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1511
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1520
.label_1510:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1512
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1507
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1517
.label_1506:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1508
.label_1507:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1521
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1502
.label_1521:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1502:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1503:
	call	fcntl
.label_1508:
	mov	ebp, eax
.label_1505:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1517:
	cmp	eax, 6
	jne	.label_1512
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1514
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1515
.label_1512:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1516
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1519
.label_1511:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1520:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1503
.label_1514:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1515:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1509
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1513
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1513
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1505
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1518
.label_1513:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1505
.label_1516:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1519:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1508
.label_1509:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1518:
	test	al, al
	je	.label_1505
	test	ebp, ebp
	js	.label_1505
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1501
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1505
.label_1501:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1505
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410830

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x410850

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
	je	.label_1523
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1525
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1526
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1522
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1523
.label_1522:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1524
.label_1525:
	mov	rax, rbx
	jmp	.label_1523
.label_1526:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1524:
	xor	eax, eax
.label_1523:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
