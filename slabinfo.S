	.file	"slabinfo.c"
	.text
	.globl	slabinfo
	.bss
	.align 32
	.type	slabinfo, @object
	.size	slabinfo, 4252000
slabinfo:
	.zero	4252000
	.globl	aliasinfo
	.align 32
	.type	aliasinfo, @object
	.size	aliasinfo, 12000
aliasinfo:
	.zero	12000
	.globl	slabs
	.align 4
	.type	slabs, @object
	.size	slabs, 4
slabs:
	.zero	4
	.globl	actual_slabs
	.align 4
	.type	actual_slabs, @object
	.size	actual_slabs, 4
actual_slabs:
	.zero	4
	.globl	aliases
	.align 4
	.type	aliases, @object
	.size	aliases, 4
aliases:
	.zero	4
	.globl	alias_targets
	.align 4
	.type	alias_targets, @object
	.size	alias_targets, 4
alias_targets:
	.zero	4
	.globl	highest_node
	.align 4
	.type	highest_node, @object
	.size	highest_node, 4
highest_node:
	.zero	4
	.globl	buffer
	.align 32
	.type	buffer, @object
	.size	buffer, 4096
buffer:
	.zero	4096
	.globl	show_empty
	.align 4
	.type	show_empty, @object
	.size	show_empty, 4
show_empty:
	.zero	4
	.globl	show_report
	.align 4
	.type	show_report, @object
	.size	show_report, 4
show_report:
	.zero	4
	.globl	show_alias
	.align 4
	.type	show_alias, @object
	.size	show_alias, 4
show_alias:
	.zero	4
	.globl	show_slab
	.align 4
	.type	show_slab, @object
	.size	show_slab, 4
show_slab:
	.zero	4
	.globl	skip_zero
	.data
	.align 4
	.type	skip_zero, @object
	.size	skip_zero, 4
skip_zero:
	.long	1
	.globl	show_numa
	.bss
	.align 4
	.type	show_numa, @object
	.size	show_numa, 4
show_numa:
	.zero	4
	.globl	show_track
	.align 4
	.type	show_track, @object
	.size	show_track, 4
show_track:
	.zero	4
	.globl	show_first_alias
	.align 4
	.type	show_first_alias, @object
	.size	show_first_alias, 4
show_first_alias:
	.zero	4
	.globl	validate
	.align 4
	.type	validate, @object
	.size	validate, 4
validate:
	.zero	4
	.globl	shrink
	.align 4
	.type	shrink, @object
	.size	shrink, 4
shrink:
	.zero	4
	.globl	show_inverted
	.align 4
	.type	show_inverted, @object
	.size	show_inverted, 4
show_inverted:
	.zero	4
	.globl	show_single_ref
	.align 4
	.type	show_single_ref, @object
	.size	show_single_ref, 4
show_single_ref:
	.zero	4
	.globl	show_totals
	.align 4
	.type	show_totals, @object
	.size	show_totals, 4
show_totals:
	.zero	4
	.globl	sort_size
	.align 4
	.type	sort_size, @object
	.size	sort_size, 4
sort_size:
	.zero	4
	.globl	sort_active
	.align 4
	.type	sort_active, @object
	.size	sort_active, 4
sort_active:
	.zero	4
	.globl	set_debug
	.align 4
	.type	set_debug, @object
	.size	set_debug, 4
set_debug:
	.zero	4
	.globl	show_ops
	.align 4
	.type	show_ops, @object
	.size	show_ops, 4
show_ops:
	.zero	4
	.globl	sort_partial
	.align 4
	.type	sort_partial, @object
	.size	sort_partial, 4
sort_partial:
	.zero	4
	.globl	show_activity
	.align 4
	.type	show_activity, @object
	.size	show_activity, 4
show_activity:
	.zero	4
	.globl	output_lines
	.data
	.align 4
	.type	output_lines, @object
	.size	output_lines, 4
output_lines:
	.long	-1
	.globl	sort_loss
	.bss
	.align 4
	.type	sort_loss, @object
	.size	sort_loss, 4
sort_loss:
	.zero	4
	.globl	extended_totals
	.align 4
	.type	extended_totals, @object
	.size	extended_totals, 4
extended_totals:
	.zero	4
	.globl	show_bytes
	.align 4
	.type	show_bytes, @object
	.size	show_bytes, 4
show_bytes:
	.zero	4
	.globl	unreclaim_only
	.align 4
	.type	unreclaim_only, @object
	.size	unreclaim_only, 4
unreclaim_only:
	.zero	4
	.globl	sanity
	.align 4
	.type	sanity, @object
	.size	sanity, 4
sanity:
	.zero	4
	.globl	redzone
	.align 4
	.type	redzone, @object
	.size	redzone, 4
redzone:
	.zero	4
	.globl	poison
	.align 4
	.type	poison, @object
	.size	poison, 4
poison:
	.zero	4
	.globl	tracking
	.align 4
	.type	tracking, @object
	.size	tracking, 4
tracking:
	.zero	4
	.globl	tracing
	.align 4
	.type	tracing, @object
	.size	tracing, 4
tracing:
	.zero	4
	.globl	page_size
	.align 4
	.type	page_size, @object
	.size	page_size, 4
page_size:
	.zero	4
	.globl	pattern
	.align 32
	.type	pattern, @object
	.size	pattern, 64
pattern:
	.zero	64
	.text
	.type	fatal, @function
fatal:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp			// 保存当前栈基址rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp			// 分配局部变量空间
	movq	%rdi, -216(%rbp)	// 第一个参数入栈
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	stderr(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE6:
	.size	fatal, .-fatal
	.section	.rodata
	.align 8
.LC0:
	.ascii	"slabinfo 4/15/2011. (c) 2007 sgi/(c) 2011 Linux Foundation.\n"
	.ascii	"\nslabinfo [-aABDefhilLnoPrsStTUvXz1] [N=K] [-dafzput] [slab"
	.ascii	"-regexp]\n-a|--aliases           Show aliases\n-A|--activity"
	.ascii	"          Most active slabs first\n-B|--Bytes             Sh"
	.ascii	"ow size in bytes\n-D|--display-active    Switch line format "
	.ascii	"to activity\n-e|--empty             Show empty slabs\n-f|--f"
	.ascii	"irst-alias       Show first alias\n-h|--help              Sh"
	.ascii	"ow usage information\n-i|--inverted          Inverted list\n"
	.ascii	"-l|--slabs             Show slabs\n-L|--Loss              So"
	.ascii	"rt by loss\n-n|--numa              Show NUMA information\n-N"
	.ascii	"|--lines=K           Show the first K slabs\n-o|--ops       "
	.ascii	"        Show kmem_cache_ops\n-P|--partial\t\tSort by number "
	.ascii	"of partial slabs\n-r|--report            Detailed report on "
	.ascii	"single slabs\n-s|--shrink            Shrink slabs\n-S|--Size"
	.ascii	"              Sort by size\n-t|--tracking          Show allo"
	.ascii	"c/free information\n-T|--Totals            Show summary info"
	.ascii	"rmation\n-U|--Unreclaim         Show unreclaimable slabs onl"
	.ascii	"y\n-v|--validate          Validate slabs\n-X|--Xtotals      "
	.ascii	"     Show extended summary information\n-z|--zero           "
	.ascii	"   Include empty slabs\n-1|--1ref              Single refere"
	.ascii	"nce\n\n-d  | --debug          Switch off all debug options\n"
	.ascii	"-da | --debug=a        Switch on all debug options (--debug="
	.ascii	"FZPU)\n\n-d[afzput] | --debug=[afzput]\n   "
	.string	" f | F              Sanity Checks (SLAB_CONSISTENCY_CHECKS)\n    z | Z              Redzoning\n    p | P              Poisoning\n    u | U              Tracking\n    t | T              Tracing\n\nSorting options (--Loss, --Size, --Partial) are mutually exclusive"
	.text
	.type	usage, @function
usage:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp			// 将上一个调用者栈基址保存在当前栈上面
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	nop
	popq	%rbp			// 恢复上一个调用者
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	usage, .-usage
	.section	.rodata
.LC1:
	.string	"r"
	.text
	.type	read_obj, @function
read_obj:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movb	$0, buffer(%rip)
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$4096, %esi
	leaq	buffer(%rip), %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L8
	movb	$0, buffer(%rip)
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	leaq	buffer(%rip), %rdi
	call	strlen@PLT
	leaq	buffer(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	cmpb	$10, %al
	jne	.L7
	leaq	buffer(%rip), %rdi
	call	strlen@PLT
	leaq	buffer(%rip), %rdx
	movb	$0, (%rax,%rdx)
.L7:
	leaq	buffer(%rip), %rdi
	call	strlen@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	read_obj, .-read_obj
	.type	get_obj, @function
get_obj:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	read_obj
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	leaq	buffer(%rip), %rdi
	call	atol@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_obj, .-get_obj
	.type	get_obj_and_str, @function
get_obj_and_str:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	read_obj
	testq	%rax, %rax
	jne	.L14
	movq	$0, -48(%rbp)
	movl	$0, %eax
	jmp	.L19
.L14:
	leaq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	leaq	buffer(%rip), %rdi
	call	strtoul@PLT
	movq	%rax, -16(%rbp)
	jmp	.L16
.L17:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.L16:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L17
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L18
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L18:
	movq	-16(%rbp), %rax
.L19:
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	get_obj_and_str, .-get_obj_and_str
	.section	.rodata
.LC2:
	.string	"%s/%s"
.LC3:
	.string	"w"
.LC4:
	.string	"Cannot write to %s\n"
.LC5:
	.string	"%d\n"
	.text
	.type	set_obj, @function
set_obj:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC2(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	leaq	-112(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L22
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L22:
	movl	-148(%rbp), %edx
	movq	-120(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	set_obj, .-set_obj
	.type	read_slab_obj, @function
read_slab_obj:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC2(%rip), %rdx
	movl	$100, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	leaq	-112(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L25
	movb	$0, buffer(%rip)
	movq	$0, -128(%rbp)
	jmp	.L26
.L25:
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	movl	$4096, %edx
	movl	$1, %esi
	leaq	buffer(%rip), %rdi
	call	fread@PLT
	movq	%rax, -128(%rbp)
	leaq	buffer(%rip), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L26:
	movq	-128(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	read_slab_obj, .-read_slab_obj
	.section	.rodata
.LC6:
	.string	"%ld"
	.text
	.type	store_size, @function
store_size:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$1, -8(%rbp)
	movb	$0, -13(%rbp)
	movl	show_bytes(%rip), %eax
	testl	%eax, %eax
	jne	.L30
	cmpq	$1000000000, -32(%rbp)
	jbe	.L31
	movq	$100000000, -8(%rbp)
	movb	$71, -13(%rbp)
	jmp	.L30
.L31:
	cmpq	$1000000, -32(%rbp)
	jbe	.L32
	movq	$100000, -8(%rbp)
	movb	$77, -13(%rbp)
	jmp	.L30
.L32:
	cmpq	$1000, -32(%rbp)
	jbe	.L30
	movq	$100, -8(%rbp)
	movb	$75, -13(%rbp)
.L30:
	movq	-32(%rbp), %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	%eax, -12(%rbp)
	cmpb	$0, -13(%rbp)
	je	.L33
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-13(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L33:
	cmpq	$1, -8(%rbp)
	je	.L34
	movl	-12(%rbp), %eax
	cltq
	leaq	-3(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-2(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
	addl	$1, -12(%rbp)
.L34:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	store_size, .-store_size
	.type	decode_numa_list, @function
decode_numa_list:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$4096, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L44
	jmp	.L39
.L43:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L41
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	highest_node(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L41
	movl	-8(%rbp), %eax
	movl	%eax, highest_node(%rip)
	jmp	.L41
.L42:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.L41:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L42
.L39:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$78, %al
	je	.L43
	jmp	.L36
.L44:
	nop
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	decode_numa_list, .-decode_numa_list
	.section	.rodata
.LC7:
	.string	"*"
.LC8:
	.string	"validate"
	.text
	.type	slab_validate, @function
slab_validate:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L48
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L45
.L48:
	nop
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	slab_validate, .-slab_validate
	.section	.rodata
.LC9:
	.string	"shrink"
	.text
	.type	slab_shrink, @function
slab_shrink:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L52
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L49
.L52:
	nop
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	slab_shrink, .-slab_shrink
	.globl	line
	.bss
	.align 4
	.type	line, @object
	.size	line, 4
line:
	.zero	4
	.section	.rodata
	.align 8
.LC10:
	.string	"Name                   Objects      Alloc       Free   %%Fast Fallb O CmpX   UL\n"
.LC11:
	.string	" Loss"
.LC12:
	.string	"Space"
	.align 8
.LC13:
	.string	"Name                   Objects Objsize           %s Slabs/Part/Cpu  O/S O %%Fr %%Ef Flg\n"
	.text
	.type	first_line, @function
first_line:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	show_activity(%rip), %eax
	testl	%eax, %eax
	je	.L54
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L58
.L54:
	movl	sort_loss(%rip), %eax
	testl	%eax, %eax
	je	.L56
	leaq	.LC11(%rip), %rax
	jmp	.L57
.L56:
	leaq	.LC12(%rip), %rax
.L57:
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L58:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	first_line, .-first_line
	.section	.rodata
.LC14:
	.string	"kmall"
	.text
	.type	find_one_alias, @function
find_one_alias:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	$0, -24(%rbp)
	leaq	aliasinfo(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L60
.L64:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L61
	cmpq	$0, -24(%rbp)
	je	.L62
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jnb	.L61
.L62:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L61
	movq	-24(%rbp), %rax
	jmp	.L63
.L61:
	addq	$24, -32(%rbp)
.L60:
	movl	aliases(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	aliasinfo(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L64
	movq	-24(%rbp), %rax
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	find_one_alias, .-find_one_alias
	.type	slab_size, @function
slab_size:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movl	page_size(%rip), %esi
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	cltq
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	slab_size, .-slab_size
	.type	slab_activity, @function
slab_activity:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	slab_activity, .-slab_activity
	.type	slab_waste, @function
slab_waste:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_size
	movq	-8(%rbp), %rdx
	movq	88(%rdx), %rcx
	movq	-8(%rbp), %rdx
	movl	40(%rdx), %edx
	movl	%edx, %edx
	imulq	%rcx, %rdx
	subq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	slab_waste, .-slab_waste
	.section	.rodata
	.align 8
.LC15:
	.string	"\n%s: No NUMA information available.\n"
.LC16:
	.string	"NUMA nodes"
.LC17:
	.string	"Slab"
.LC18:
	.string	"\n%-21s:"
.LC19:
	.string	" %4d"
.LC20:
	.string	"\n----------------------"
.LC21:
	.string	"-----"
.LC22:
	.string	"All slabs"
.LC23:
	.string	"%-21s "
.LC24:
	.string	" %4s"
.LC25:
	.string	"Partial slabs"
	.text
	.type	slab_numa, @function
slab_numa:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L91
	movl	highest_node(%rip), %eax
	testl	%eax, %eax
	jne	.L74
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L71
.L74:
	movl	skip_zero(%rip), %eax
	testl	%eax, %eax
	je	.L75
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L92
.L75:
	movl	line(%rip), %eax
	testl	%eax, %eax
	jne	.L76
	cmpl	$0, -60(%rbp)
	je	.L77
	leaq	.LC16(%rip), %rax
	jmp	.L78
.L77:
	leaq	.LC17(%rip), %rax
.L78:
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -36(%rbp)
	jmp	.L79
.L80:
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -36(%rbp)
.L79:
	movl	highest_node(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L80
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -36(%rbp)
	jmp	.L81
.L82:
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -36(%rbp)
.L81:
	movl	highest_node(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L82
	movl	$10, %edi
	call	putchar@PLT
.L76:
	cmpl	$0, -60(%rbp)
	jne	.L83
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L84
.L83:
	leaq	.LC22(%rip), %rax
.L84:
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -36(%rbp)
	jmp	.L85
.L86:
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$76, %rdx
	movl	8(%rax,%rdx,4), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -36(%rbp)
.L85:
	movl	highest_node(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L86
	movl	$10, %edi
	call	putchar@PLT
	cmpl	$0, -60(%rbp)
	je	.L87
	leaq	.LC25(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -36(%rbp)
	jmp	.L88
.L89:
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1100, %rdx
	movl	8(%rax,%rdx,4), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -36(%rbp)
.L88:
	movl	highest_node(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L89
	movl	$10, %edi
	call	putchar@PLT
.L87:
	movl	line(%rip), %eax
	addl	$1, %eax
	movl	%eax, line(%rip)
	jmp	.L71
.L91:
	nop
	jmp	.L71
.L92:
	nop
.L71:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L90
	call	__stack_chk_fail@PLT
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	slab_numa, .-slab_numa
	.section	.rodata
	.align 8
.LC26:
	.string	"\n%s: Kernel object allocation\n"
	.align 8
.LC27:
	.string	"-----------------------------------------------------------------------"
.LC28:
	.string	"alloc_calls"
.LC29:
	.string	"%s"
.LC30:
	.string	"No Data"
.LC31:
	.string	"\n%s: Kernel object freeing\n"
	.align 8
.LC32:
	.string	"------------------------------------------------------------------------"
.LC33:
	.string	"free_calls"
	.text
	.type	show_tracking, @function
show_tracking:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	read_slab_obj
	testq	%rax, %rax
	je	.L94
	leaq	buffer(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L95
.L94:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
.L95:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	read_slab_obj
	testq	%rax, %rax
	je	.L96
	leaq	buffer(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L98
.L96:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
.L98:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	show_tracking, .-show_tracking
	.section	.rodata
.LC34:
	.string	"ops"
.LC35:
	.string	"\n%s: kmem_cache operations\n"
	.align 8
.LC36:
	.string	"--------------------------------------------"
	.align 8
.LC37:
	.string	"\n%s has no kmem_cache operations\n"
	.text
	.type	ops, @function
ops:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L103
	movq	-8(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	read_slab_obj
	testq	%rax, %rax
	je	.L102
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
	leaq	buffer(%rip), %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L99
.L102:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L99
.L103:
	nop
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ops, .-ops
	.section	.rodata
.LC38:
	.string	"On "
.LC39:
	.string	"Off"
	.text
	.type	onoff, @function
onoff:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L105
	leaq	.LC38(%rip), %rax
	jmp	.L106
.L105:
	leaq	.LC39(%rip), %rax
.L106:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	onoff, .-onoff
	.section	.rodata
	.align 8
.LC40:
	.string	"Slab Perf Counter       Alloc     Free %%Al %%Fr\n"
	.align 8
.LC41:
	.string	"--------------------------------------------------"
	.align 8
.LC42:
	.string	"Fastpath             %8lu %8lu %3lu %3lu\n"
	.align 8
.LC43:
	.string	"Slowpath             %8lu %8lu %3lu %3lu\n"
	.align 8
.LC44:
	.string	"Page Alloc           %8lu %8lu %3lu %3lu\n"
	.align 8
.LC45:
	.string	"Add partial          %8lu %8lu %3lu %3lu\n"
	.align 8
.LC46:
	.string	"Remove partial       %8lu %8lu %3lu %3lu\n"
	.align 8
.LC47:
	.string	"Cpu partial list     %8lu %8lu %3lu %3lu\n"
	.align 8
.LC48:
	.string	"RemoteObj/SlabFrozen %8lu %8lu %3lu %3lu\n"
	.align 8
.LC49:
	.string	"Total                %8lu %8lu\n\n"
.LC50:
	.string	"Flushes %8lu\n"
	.align 8
.LC51:
	.string	"\nSlab Deactivation             Occurrences %%\n"
	.align 8
.LC52:
	.string	"-------------------------------------------------"
	.align 8
.LC53:
	.string	"Slab full                     %7lu  %3lu%%\n"
	.align 8
.LC54:
	.string	"Slab empty                    %7lu  %3lu%%\n"
	.align 8
.LC55:
	.string	"Moved to head of partial list %7lu  %3lu%%\n"
	.align 8
.LC56:
	.string	"Moved to tail of partial list %7lu  %3lu%%\n"
	.align 8
.LC57:
	.string	"Deactivation bypass           %7lu  %3lu%%\n"
	.align 8
.LC58:
	.string	"Refilled from foreign frees   %7lu  %3lu%%\n"
	.align 8
.LC59:
	.string	"Node mismatch                 %7lu  %3lu%%\n"
	.align 8
.LC60:
	.string	"\nCmpxchg_double Looping\n------------------------"
	.align 8
.LC61:
	.string	"Locked Cmpxchg Double redos   %lu\nUnlocked Cmpxchg Double redos %lu\n"
	.text
	.type	slab_stats, @function
slab_stats:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L129
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC40(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC41(%rip), %rdi
	call	puts@PLT
	cmpq	$0, -16(%rbp)
	je	.L111
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, %rsi
	jmp	.L112
.L111:
	movl	$0, %esi
.L112:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -16(%rbp)
	je	.L113
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, %r8
	jmp	.L114
.L113:
	movl	$0, %r8d
.L114:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-24(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	120(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -16(%rbp)
	je	.L115
	movq	-40(%rbp), %rax
	movq	192(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, %rsi
	jmp	.L116
.L115:
	movl	$0, %esi
.L116:
	movq	-40(%rbp), %rax
	movq	184(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -16(%rbp)
	je	.L117
	movq	-40(%rbp), %rax
	movq	160(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, %rdi
	jmp	.L118
.L117:
	movl	$0, %edi
.L118:
	movq	-40(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	232(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movq	240(%rdx), %rdx
	addq	%rdx, %rsi
	movq	%rdi, %r8
	movq	%rax, %rdx
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -16(%rbp)
	je	.L119
	movq	-40(%rbp), %rax
	movq	168(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, %rsi
	jmp	.L120
.L119:
	movl	$0, %esi
.L120:
	movq	-40(%rbp), %rax
	movq	176(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -16(%rbp)
	je	.L121
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, %rsi
	jmp	.L122
.L121:
	movl	$0, %esi
.L122:
	movq	-40(%rbp), %rax
	movq	296(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -16(%rbp)
	je	.L123
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rax, %rsi
	jmp	.L124
.L123:
	movl	$0, %esi
.L124:
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC48(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L125:
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L126
	leaq	.LC51(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC52(%rip), %rdi
	call	puts@PLT
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	224(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC54(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	232(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC55(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	288(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC57(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	200(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movq	280(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L126:
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	je	.L107
.L127:
	leaq	.LC60(%rip), %rdi
	call	puts@PLT
	movq	-40(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L107
.L128:
	nop
	jmp	.L107
.L129:
	nop
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	slab_stats, .-slab_stats
	.section	.rodata
	.align 8
.LC62:
	.string	"\nSlabcache: %-15s  Aliases: %2d Order : %2d Objects: %lu\n"
.LC63:
	.string	"** Hardware cacheline aligned"
	.align 8
.LC64:
	.string	"** Memory is allocated in a special DMA zone"
	.align 8
.LC65:
	.string	"** Slabs are destroyed via RCU"
.LC66:
	.string	"** Reclaim accounting active"
	.align 8
.LC67:
	.string	"\nSizes (bytes)     Slabs              Debug                Memory"
	.align 8
.LC68:
	.string	"Object : %7d  Total  : %7ld   Sanity Checks : %s  Total: %7ld\n"
	.align 8
.LC69:
	.string	"SlabObj: %7d  Full   : %7ld   Redzoning     : %s  Used : %7ld\n"
	.align 8
.LC70:
	.string	"SlabSiz: %7d  Partial: %7ld   Poisoning     : %s  Loss : %7ld\n"
	.align 8
.LC71:
	.string	"Loss   : %7d  CpuSlab: %7d   Tracking      : %s  Lalig: %7ld\n"
	.align 8
.LC72:
	.string	"Align  : %7d  Objects: %7d   Tracing       : %s  Lpadd: %7ld\n"
	.text
	.type	report, @function
report:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L137
	movq	-24(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L133
	leaq	.LC63(%rip), %rdi
	call	puts@PLT
.L133:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L134
	leaq	.LC64(%rip), %rdi
	call	puts@PLT
.L134:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L135
	leaq	.LC65(%rip), %rdi
	call	puts@PLT
.L135:
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L136
	leaq	.LC66(%rip), %rdi
	call	puts@PLT
.L136:
	leaq	.LC67(%rip), %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movl	page_size(%rip), %esi
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	cltq
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %edi
	call	onoff
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movq	%rbx, %r8
	movl	%eax, %esi
	leaq	.LC68(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, %edi
	call	onoff
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	movq	%rbx, %r8
	movl	%eax, %esi
	leaq	.LC69(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movl	page_size(%rip), %esi
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	cltq
	imulq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	imulq	%rcx, %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %edi
	call	onoff
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movl	page_size(%rip), %esi
	movq	-24(%rbp), %rdx
	movl	64(%rdx), %edx
	movl	%edx, %ecx
	sall	%cl, %esi
	movq	%rbx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdx
	leaq	.LC70(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %edx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	onoff
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	movq	-24(%rbp), %rdx
	movl	52(%rdx), %esi
	movq	-24(%rbp), %rdx
	movl	40(%rdx), %edx
	subl	%edx, %esi
	movq	%rbx, %r8
	movl	%eax, %edx
	leaq	.LC71(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	page_size(%rip), %edx
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	imull	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %edx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %edi
	call	onoff
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movq	%rbx, %r8
	movl	%eax, %esi
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ops
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	show_tracking
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	slab_numa
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	slab_stats
	jmp	.L130
.L137:
	nop
.L130:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	report, .-report
	.section	.rodata
.LC73:
	.string	"%lu/%lu/%d"
	.align 8
.LC74:
	.string	"%-21s %8ld %10ld %10ld %3ld %3ld %5ld %1d %4ld %4ld\n"
	.align 8
.LC75:
	.string	"%-21s %8ld %7d %15s %14s %4d %1d %3ld %3ld %s\n"
	.text
	.type	slabcache, @function
slabcache:
.LFB28:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L169
	movl	unreclaim_only(%rip), %eax
	testl	%eax, %eax
	je	.L141
	movq	-168(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	jne	.L170
.L141:
	movl	actual_slabs(%rip), %eax
	cmpl	$1, %eax
	jne	.L142
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	report
	jmp	.L138
.L142:
	movl	skip_zero(%rip), %eax
	testl	%eax, %eax
	je	.L143
	movl	show_empty(%rip), %eax
	testl	%eax, %eax
	jne	.L143
	movq	-168(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L171
.L143:
	movl	show_empty(%rip), %eax
	testl	%eax, %eax
	je	.L144
	movq	-168(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L172
.L144:
	movl	sort_loss(%rip), %eax
	testl	%eax, %eax
	jne	.L145
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	slab_size
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	jmp	.L146
.L145:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	slab_waste
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
.L146:
	movq	-168(%rbp), %rax
	movl	28(%rax), %esi
	movq	-168(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-168(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-168(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	subq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC73(%rip), %rdx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	movl	line(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, line(%rip)
	testl	%eax, %eax
	jne	.L147
	call	first_line
.L147:
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L148
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$42, (%rax)
.L148:
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L149
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$100, (%rax)
.L149:
	movq	-168(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L150
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$65, (%rax)
.L150:
	movq	-168(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L151
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$80, (%rax)
.L151:
	movq	-168(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L152
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$97, (%rax)
.L152:
	movq	-168(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L153
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$90, (%rax)
.L153:
	movq	-168(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L154
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$70, (%rax)
.L154:
	movq	-168(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L155
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$85, (%rax)
.L155:
	movq	-168(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L156
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movb	$84, (%rax)
.L156:
	movq	-152(%rbp), %rax
	movb	$0, (%rax)
	movl	show_activity(%rip), %eax
	testl	%eax, %eax
	je	.L157
	movq	-168(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	128(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	144(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	264(%rax), %r9
	movq	-168(%rbp), %rax
	movq	272(%rax), %r8
	movq	-168(%rbp), %rax
	movl	64(%rax), %edi
	movq	-168(%rbp), %rax
	movq	256(%rax), %rsi
	cmpq	$0, -136(%rbp)
	je	.L158
	movq	-168(%rbp), %rax
	movq	136(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-136(%rbp)
	movq	%rax, %r11
	jmp	.L159
.L158:
	movl	$0, %r11d
.L159:
	cmpq	$0, -144(%rbp)
	je	.L160
	movq	-168(%rbp), %rax
	movq	120(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-144(%rbp)
	movq	%rax, %rbx
	jmp	.L161
.L160:
	movl	$0, %ebx
.L161:
	movq	-168(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %r10
	movq	-144(%rbp), %rcx
	subq	$8, %rsp
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	movq	%rbx, %r9
	movq	%r10, %r8
	movq	%rax, %rsi
	leaq	.LC74(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$48, %rsp
	jmp	.L138
.L157:
	movq	-168(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-168(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-168(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	imulq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	movq	-168(%rbp), %rax
	movq	96(%rax), %rdx
	movl	page_size(%rip), %esi
	movq	-168(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	cltq
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rbx
	movq	%rax, %rbx
	jmp	.L164
.L163:
	movl	$100, %ebx
.L164:
	movq	-168(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-168(%rbp), %rax
	movq	80(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	movq	96(%rax), %rdi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rax, %r11
	jmp	.L166
.L165:
	movl	$100, %r11d
.L166:
	movq	-168(%rbp), %rax
	movl	64(%rax), %edi
	movq	-168(%rbp), %rax
	movl	44(%rax), %esi
	movq	-168(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-168(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %r9
	leaq	-128(%rbp), %r10
	subq	$8, %rsp
	leaq	-96(%rbp), %r8
	pushq	%r8
	pushq	%rbx
	pushq	%r11
	pushq	%rdi
	pushq	%rsi
	movq	%r10, %r8
	movq	%rax, %rsi
	leaq	.LC75(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$48, %rsp
	jmp	.L138
.L169:
	nop
	jmp	.L138
.L170:
	nop
	jmp	.L138
.L171:
	nop
	jmp	.L138
.L172:
	nop
.L138:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L168
	call	__stack_chk_fail@PLT
.L168:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	slabcache, .-slabcache
	.section	.rodata
.LC76:
	.string	"-"
.LC77:
	.string	"a"
	.text
	.type	debug_opt_scan, @function
debug_opt_scan:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L174
	movq	-8(%rbp), %rax
	leaq	.LC76(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L175
.L174:
	movl	$1, %eax
	jmp	.L176
.L175:
	movq	-8(%rbp), %rax
	leaq	.LC77(%rip), %rsi
	movq	%rax, %rdi
	call	strcasecmp@PLT
	testl	%eax, %eax
	jne	.L178
	movl	$1, sanity(%rip)
	movl	$1, poison(%rip)
	movl	$1, redzone(%rip)
	movl	$1, tracking(%rip)
	movl	$1, %eax
	jmp	.L176
.L192:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$70, %eax
	cmpl	$52, %eax
	ja	.L179
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L181(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L181(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L181:
	.long	.L185-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L184-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L183-.L181
	.long	.L182-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L180-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L185-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L184-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L183-.L181
	.long	.L182-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L180-.L181
	.text
.L185:
	movl	sanity(%rip), %eax
	testl	%eax, %eax
	je	.L186
	movl	$0, %eax
	jmp	.L176
.L186:
	movl	$1, sanity(%rip)
	jmp	.L187
.L184:
	movl	poison(%rip), %eax
	testl	%eax, %eax
	je	.L188
	movl	$0, %eax
	jmp	.L176
.L188:
	movl	$1, poison(%rip)
	jmp	.L187
.L180:
	movl	redzone(%rip), %eax
	testl	%eax, %eax
	je	.L189
	movl	$0, %eax
	jmp	.L176
.L189:
	movl	$1, redzone(%rip)
	jmp	.L187
.L182:
	movl	tracking(%rip), %eax
	testl	%eax, %eax
	je	.L190
	movl	$0, %eax
	jmp	.L176
.L190:
	movl	$1, tracking(%rip)
	jmp	.L187
.L183:
	movl	tracing(%rip), %eax
	testl	%eax, %eax
	je	.L191
	movl	$0, %eax
	jmp	.L176
.L191:
	movl	$1, tracing(%rip)
	jmp	.L187
.L179:
	movl	$0, %eax
	jmp	.L176
.L187:
	addq	$1, -8(%rbp)
.L178:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L192
	movl	$1, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	debug_opt_scan, .-debug_opt_scan
	.type	slab_empty, @function
slab_empty:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L194
	movl	$0, %eax
	jmp	.L195
.L194:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
.L196:
	movl	$1, %eax
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	slab_empty, .-slab_empty
	.section	.rodata
.LC78:
	.string	"sanity_checks"
	.align 8
.LC79:
	.string	"%s not empty cannot disable sanity checks\n"
.LC80:
	.string	"red_zone"
	.align 8
.LC81:
	.string	"%s not empty cannot enable redzoning\n"
	.align 8
.LC82:
	.string	"%s not empty cannot disable redzoning\n"
.LC83:
	.string	"poison"
	.align 8
.LC84:
	.string	"%s not empty cannot enable poisoning\n"
	.align 8
.LC85:
	.string	"%s not empty cannot disable poisoning\n"
.LC86:
	.string	"store_user"
	.align 8
.LC87:
	.string	"%s not empty cannot enable tracking\n"
	.align 8
.LC88:
	.string	"%s not empty cannot disable tracking\n"
.LC89:
	.string	"trace"
	.align 8
.LC90:
	.string	"%s can only enable trace for one slab at a time\n"
	.text
	.type	slab_debug, @function
slab_debug:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L217
	movl	sanity(%rip), %eax
	testl	%eax, %eax
	je	.L200
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L200
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
.L200:
	movl	sanity(%rip), %eax
	testl	%eax, %eax
	jne	.L201
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L201
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_empty
	testl	%eax, %eax
	je	.L202
	movq	-8(%rbp), %rax
	movl	$0, %edx
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L201
.L202:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L201:
	movl	redzone(%rip), %eax
	testl	%eax, %eax
	je	.L203
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	jne	.L203
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_empty
	testl	%eax, %eax
	je	.L204
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L203
.L204:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L203:
	movl	redzone(%rip), %eax
	testl	%eax, %eax
	jne	.L205
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L205
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_empty
	testl	%eax, %eax
	je	.L206
	movq	-8(%rbp), %rax
	movl	$0, %edx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L205
.L206:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L205:
	movl	poison(%rip), %eax
	testl	%eax, %eax
	je	.L207
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	jne	.L207
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_empty
	testl	%eax, %eax
	je	.L208
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L207
.L208:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC84(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L207:
	movl	poison(%rip), %eax
	testl	%eax, %eax
	jne	.L209
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	je	.L209
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_empty
	testl	%eax, %eax
	je	.L210
	movq	-8(%rbp), %rax
	movl	$0, %edx
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L209
.L210:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L209:
	movl	tracking(%rip), %eax
	testl	%eax, %eax
	je	.L211
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L211
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_empty
	testl	%eax, %eax
	je	.L212
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L211
.L212:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC87(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L211:
	movl	tracking(%rip), %eax
	testl	%eax, %eax
	jne	.L213
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L213
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_empty
	testl	%eax, %eax
	je	.L214
	movq	-8(%rbp), %rax
	movl	$0, %edx
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L213
.L214:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC88(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L213:
	movl	tracing(%rip), %eax
	testl	%eax, %eax
	je	.L215
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L215
	movl	slabs(%rip), %eax
	cmpl	$1, %eax
	jne	.L216
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC89(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L215
.L216:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC90(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L215:
	movl	tracing(%rip), %eax
	testl	%eax, %eax
	jne	.L197
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L197
	movq	-8(%rbp), %rax
	movl	$1, %edx
	leaq	.LC89(%rip), %rsi
	movq	%rax, %rdi
	call	set_obj
	jmp	.L197
.L217:
	nop
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	slab_debug, .-slab_debug
	.section	.rodata
.LC91:
	.string	"No objects"
.LC92:
	.string	"No slabs"
.LC93:
	.string	"Slabcache Totals"
.LC94:
	.string	"----------------"
	.align 8
.LC95:
	.string	"Slabcaches : %15d   Aliases  : %11d->%-3d  Active:    %3d\n"
	.align 8
.LC96:
	.string	"Memory used: %15s   # Loss   : %15s   MRatio:%6s%%\n"
	.align 8
.LC97:
	.string	"# Objects  : %15s   # PartObj: %15s   ORatio:%6s%%\n"
	.align 8
.LC98:
	.string	"Per Cache         Average              Min              Max            Total"
	.align 8
.LC99:
	.string	"----------------------------------------------------------------------------"
	.align 8
.LC100:
	.string	"#Objects  %15s  %15s  %15s  %15s\n"
	.align 8
.LC101:
	.string	"#Slabs    %15s  %15s  %15s  %15s\n"
	.align 8
.LC102:
	.string	"#PartSlab %15s  %15s  %15s  %15s\n"
	.align 8
.LC103:
	.string	"%%PartSlab%15s%% %15s%% %15s%% %15s%%\n"
	.align 8
.LC104:
	.string	"PartObjs  %15s  %15s  %15s  %15s\n"
	.align 8
.LC105:
	.string	"%% PartObj%15s%% %15s%% %15s%% %15s%%\n"
	.align 8
.LC106:
	.string	"Memory    %15s  %15s  %15s  %15s\n"
	.align 8
.LC107:
	.string	"Used      %15s  %15s  %15s  %15s\n"
	.align 8
.LC108:
	.string	"Loss      %15s  %15s  %15s  %15s\n"
	.align 8
.LC109:
	.string	"Per Object        Average              Min              Max"
	.align 8
.LC110:
	.string	"-----------------------------------------------------------"
.LC111:
	.string	"Memory    %15s  %15s  %15s\n"
.LC112:
	.string	"User      %15s  %15s  %15s\n"
.LC113:
	.string	"Loss      %15s  %15s  %15s\n"
	.text
	.type	totals, @function
totals:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -572(%rbp)
	movabsq	$-9223372036854775808, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$0, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	$0, -512(%rbp)
	movq	$0, -504(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -480(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -456(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -432(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -408(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$100, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$100, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	leaq	slabinfo(%rip), %rax
	movq	%rax, -568(%rbp)
	jmp	.L219
.L249:
	movq	-568(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L255
	movq	-568(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L255
	addl	$1, -572(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	slab_size
	movq	%rax, -160(%rbp)
	movq	-568(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-568(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	imulq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rax
	subq	-152(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-568(%rbp), %rax
	movl	52(%rax), %edx
	movq	-568(%rbp), %rax
	movl	40(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movq	%rax, -136(%rbp)
	movq	-568(%rbp), %rax
	movq	80(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-568(%rbp), %rax
	movq	96(%rax), %rdi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rax, -280(%rbp)
	cmpq	$100, -280(%rbp)
	jbe	.L223
	movq	$100, -280(%rbp)
.L223:
	movq	-568(%rbp), %rax
	movq	104(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-568(%rbp), %rax
	movq	88(%rax), %rdi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rax, -272(%rbp)
	cmpq	$100, -272(%rbp)
	jbe	.L224
	movq	$100, -272(%rbp)
.L224:
	movq	-568(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -560(%rbp)
	jbe	.L225
	movq	-568(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -560(%rbp)
.L225:
	movq	-568(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, -544(%rbp)
	jbe	.L226
	movq	-568(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -544(%rbp)
.L226:
	movq	-568(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -520(%rbp)
	jbe	.L227
	movq	-568(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -520(%rbp)
.L227:
	movq	-160(%rbp), %rax
	cmpq	-496(%rbp), %rax
	jnb	.L228
	movq	-160(%rbp), %rax
	movq	%rax, -496(%rbp)
.L228:
	movq	-144(%rbp), %rax
	cmpq	-448(%rbp), %rax
	jnb	.L229
	movq	-144(%rbp), %rax
	movq	%rax, -448(%rbp)
.L229:
	movq	-136(%rbp), %rax
	cmpq	-400(%rbp), %rax
	jnb	.L230
	movq	-136(%rbp), %rax
	movq	%rax, -400(%rbp)
.L230:
	movq	-568(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -424(%rbp)
	jbe	.L231
	movq	-568(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -424(%rbp)
.L231:
	movq	-152(%rbp), %rax
	cmpq	-472(%rbp), %rax
	jnb	.L232
	movq	-152(%rbp), %rax
	movq	%rax, -472(%rbp)
.L232:
	movq	-568(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, -328(%rbp)
	jbe	.L233
	movq	-568(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -328(%rbp)
.L233:
	movq	-280(%rbp), %rax
	cmpq	-352(%rbp), %rax
	jnb	.L234
	movq	-280(%rbp), %rax
	movq	%rax, -352(%rbp)
.L234:
	movq	-272(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jnb	.L235
	movq	-272(%rbp), %rax
	movq	%rax, -304(%rbp)
.L235:
	movq	-568(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -376(%rbp)
	jbe	.L236
	movq	-568(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -376(%rbp)
.L236:
	movq	-568(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -552(%rbp)
	jnb	.L237
	movq	-568(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -552(%rbp)
.L237:
	movq	-568(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, -536(%rbp)
	jnb	.L238
	movq	-568(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -536(%rbp)
.L238:
	movq	-568(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -512(%rbp)
	jnb	.L239
	movq	-568(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -512(%rbp)
.L239:
	movq	-160(%rbp), %rax
	cmpq	-488(%rbp), %rax
	jbe	.L240
	movq	-160(%rbp), %rax
	movq	%rax, -488(%rbp)
.L240:
	movq	-144(%rbp), %rax
	cmpq	-440(%rbp), %rax
	jbe	.L241
	movq	-144(%rbp), %rax
	movq	%rax, -440(%rbp)
.L241:
	movq	-136(%rbp), %rax
	cmpq	-392(%rbp), %rax
	jbe	.L242
	movq	-136(%rbp), %rax
	movq	%rax, -392(%rbp)
.L242:
	movq	-568(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -416(%rbp)
	jnb	.L243
	movq	-568(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -416(%rbp)
.L243:
	movq	-152(%rbp), %rax
	cmpq	-464(%rbp), %rax
	jbe	.L244
	movq	-152(%rbp), %rax
	movq	%rax, -464(%rbp)
.L244:
	movq	-568(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, -320(%rbp)
	jnb	.L245
	movq	-568(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -320(%rbp)
.L245:
	movq	-280(%rbp), %rax
	cmpq	-344(%rbp), %rax
	jbe	.L246
	movq	-280(%rbp), %rax
	movq	%rax, -344(%rbp)
.L246:
	movq	-272(%rbp), %rax
	cmpq	-296(%rbp), %rax
	jbe	.L247
	movq	-272(%rbp), %rax
	movq	%rax, -296(%rbp)
.L247:
	movq	-568(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -368(%rbp)
	jnb	.L248
	movq	-568(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -368(%rbp)
.L248:
	movq	-568(%rbp), %rax
	movq	80(%rax), %rax
	addq	%rax, -528(%rbp)
	movq	-568(%rbp), %rax
	movq	96(%rax), %rax
	addq	%rax, -504(%rbp)
	movq	-160(%rbp), %rax
	addq	%rax, -480(%rbp)
	movq	-144(%rbp), %rax
	addq	%rax, -432(%rbp)
	movq	-568(%rbp), %rax
	movq	88(%rax), %rax
	addq	%rax, -408(%rbp)
	movq	-152(%rbp), %rax
	addq	%rax, -456(%rbp)
	movq	-568(%rbp), %rax
	movq	104(%rax), %rax
	addq	%rax, -312(%rbp)
	movq	-280(%rbp), %rax
	addq	%rax, -336(%rbp)
	movq	-272(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-568(%rbp), %rax
	movq	88(%rax), %rax
	imulq	-136(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-568(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-568(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %eax
	imulq	%rdx, %rax
	addq	%rax, -360(%rbp)
	jmp	.L222
.L255:
	nop
.L222:
	addq	$8504, -568(%rbp)
.L219:
	movl	slabs(%rip), %eax
	cltq
	imulq	$8504, %rax, %rax
	leaq	slabinfo(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -568(%rbp)
	jb	.L249
	cmpq	$0, -408(%rbp)
	jne	.L250
	leaq	.LC91(%rip), %rdi
	call	puts@PLT
	jmp	.L218
.L250:
	cmpl	$0, -572(%rbp)
	jne	.L252
	leaq	.LC92(%rip), %rdi
	call	puts@PLT
	jmp	.L218
.L252:
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-528(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -256(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-504(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -248(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-480(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -240(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-432(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -232(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-408(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -224(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-456(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -216(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-312(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -208(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-336(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -200(%rbp)
	movl	-572(%rbp), %eax
	movslq	%eax, %rcx
	movq	-288(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, -192(%rbp)
	movq	-456(%rbp), %rax
	movl	$0, %edx
	divq	-408(%rbp)
	movq	%rax, -184(%rbp)
	movq	-384(%rbp), %rax
	movl	$0, %edx
	divq	-408(%rbp)
	movq	%rax, -176(%rbp)
	movq	-312(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-408(%rbp)
	movq	%rax, -208(%rbp)
	movq	-360(%rbp), %rax
	movl	$0, %edx
	divq	-408(%rbp)
	movq	%rax, -168(%rbp)
	leaq	.LC93(%rip), %rdi
	call	puts@PLT
	leaq	.LC94(%rip), %rdi
	call	puts@PLT
	movl	alias_targets(%rip), %ecx
	movl	aliases(%rip), %edx
	movl	slabs(%rip), %eax
	movl	-572(%rbp), %esi
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC95(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-480(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-432(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-432(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-456(%rbp)
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC96(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-408(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-312(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-312(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-408(%rbp)
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC97(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC98(%rip), %rdi
	call	puts@PLT
	leaq	.LC99(%rip), %rdi
	call	puts@PLT
	movq	-224(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-424(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-416(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-408(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC100(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-248(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-520(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-512(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-504(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC101(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-256(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-544(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-536(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-528(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC102(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-200(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-352(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-344(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-528(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-504(%rbp)
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC103(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-208(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-328(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-320(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-312(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC104(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-304(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-296(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-312(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	movl	$0, %edx
	divq	-408(%rbp)
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC105(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-240(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-496(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-488(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-480(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC106(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-216(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-472(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-464(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-456(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC107(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-232(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-448(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-440(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-432(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC108(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC109(%rip), %rdi
	call	puts@PLT
	leaq	.LC110(%rip), %rdi
	call	puts@PLT
	movq	-168(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-376(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-368(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC111(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-184(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-560(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-552(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC112(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-176(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-400(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	movq	-392(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_size
	leaq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC113(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L218:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L254
	call	__stack_chk_fail@PLT
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	totals, .-totals
	.type	sort_slabs, @function
sort_slabs:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$360, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	slabinfo(%rip), %rax
	movq	%rax, -8544(%rbp)
	jmp	.L257
.L267:
	movq	-8544(%rbp), %rax
	addq	$8504, %rax
	movq	%rax, -8536(%rbp)
	jmp	.L258
.L266:
	movl	sort_size(%rip), %eax
	testl	%eax, %eax
	je	.L259
	movq	-8544(%rbp), %rax
	movq	%rax, %rdi
	call	slab_size
	movq	%rax, %rbx
	movq	-8536(%rbp), %rax
	movq	%rax, %rdi
	call	slab_size
	cmpq	%rax, %rbx
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -8548(%rbp)
	jmp	.L260
.L259:
	movl	sort_active(%rip), %eax
	testl	%eax, %eax
	je	.L261
	movq	-8544(%rbp), %rax
	movq	%rax, %rdi
	call	slab_activity
	movq	%rax, %rbx
	movq	-8536(%rbp), %rax
	movq	%rax, %rdi
	call	slab_activity
	cmpq	%rax, %rbx
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -8548(%rbp)
	jmp	.L260
.L261:
	movl	sort_loss(%rip), %eax
	testl	%eax, %eax
	je	.L262
	movq	-8544(%rbp), %rax
	movq	%rax, %rdi
	call	slab_waste
	movq	%rax, %rbx
	movq	-8536(%rbp), %rax
	movq	%rax, %rdi
	call	slab_waste
	cmpq	%rax, %rbx
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -8548(%rbp)
	jmp	.L260
.L262:
	movl	sort_partial(%rip), %eax
	testl	%eax, %eax
	je	.L263
	movq	-8544(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8536(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -8548(%rbp)
	jmp	.L260
.L263:
	movq	-8536(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8544(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp@PLT
	movl	%eax, -8548(%rbp)
.L260:
	movl	show_inverted(%rip), %eax
	testl	%eax, %eax
	je	.L264
	negl	-8548(%rbp)
.L264:
	cmpl	$0, -8548(%rbp)
	jle	.L265
	movq	-8544(%rbp), %rcx
	leaq	-8528(%rbp), %rax
	movl	$8504, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8536(%rbp), %rcx
	movq	-8544(%rbp), %rax
	movl	$8504, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-8528(%rbp), %rcx
	movq	-8536(%rbp), %rax
	movl	$8504, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L265:
	addq	$8504, -8536(%rbp)
.L258:
	movl	slabs(%rip), %eax
	cltq
	imulq	$8504, %rax, %rax
	leaq	slabinfo(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -8536(%rbp)
	jb	.L266
	addq	$8504, -8544(%rbp)
.L257:
	movl	slabs(%rip), %eax
	cltq
	imulq	$8504, %rax, %rax
	leaq	slabinfo(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -8544(%rbp)
	jb	.L267
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L268
	call	__stack_chk_fail@PLT
.L268:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	sort_slabs, .-sort_slabs
	.type	sort_aliases, @function
sort_aliases:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	aliasinfo(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L270
.L275:
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -56(%rbp)
	jmp	.L271
.L274:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	show_alias(%rip), %eax
	testl	%eax, %eax
	je	.L272
	movl	show_inverted(%rip), %eax
	testl	%eax, %eax
	jne	.L272
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L272:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp@PLT
	testl	%eax, %eax
	jle	.L273
	movq	-64(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L273:
	addq	$24, -56(%rbp)
.L271:
	movl	aliases(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	aliasinfo(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -56(%rbp)
	jb	.L274
	addq	$24, -64(%rbp)
.L270:
	movl	aliases(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	aliasinfo(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -64(%rbp)
	jb	.L275
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L276
	call	__stack_chk_fail@PLT
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	sort_aliases, .-sort_aliases
	.section	.rodata
.LC114:
	.string	"Unresolved alias %s\n"
	.text
	.type	link_slabs, @function
link_slabs:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	aliasinfo(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L278
.L284:
	leaq	slabinfo(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L279
.L282:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L280
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L281
.L280:
	addq	$8504, -8(%rbp)
.L279:
	movl	slabs(%rip), %eax
	cltq
	imulq	$8504, %rax, %rax
	leaq	slabinfo(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -8(%rbp)
	jb	.L282
.L281:
	movl	slabs(%rip), %eax
	cltq
	imulq	$8504, %rax, %rax
	leaq	slabinfo(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -8(%rbp)
	jne	.L283
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC114(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L283:
	addq	$24, -16(%rbp)
.L278:
	movl	aliases(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	aliasinfo(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L284
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	link_slabs, .-link_slabs
	.section	.rodata
.LC115:
	.string	" %s"
.LC116:
	.string	"\n%-12s <- %s"
.LC117:
	.string	"%-15s -> %s\n"
	.text
	.type	alias, @function
alias:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	call	sort_aliases
	call	link_slabs
	leaq	aliasinfo(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L286
.L291:
	movl	show_single_ref(%rip), %eax
	testl	%eax, %eax
	jne	.L287
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	je	.L293
.L287:
	movl	show_inverted(%rip), %eax
	testl	%eax, %eax
	jne	.L289
	cmpq	$0, -8(%rbp)
	je	.L290
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L290
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC115(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L288
.L290:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC116(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L288
.L289:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC117(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L288
.L293:
	nop
.L288:
	addq	$24, -16(%rbp)
.L286:
	movl	aliases(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	aliasinfo(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L291
	cmpq	$0, -8(%rbp)
	je	.L294
	movl	$10, %edi
	call	putchar@PLT
.L294:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	alias, .-alias
	.type	rename_slabs, @function
rename_slabs:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	slabinfo(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L296
.L301:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L302
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	jle	.L299
	movl	show_first_alias(%rip), %eax
	testl	%eax, %eax
	je	.L303
.L299:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	find_one_alias
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L300
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L298
.L300:
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, (%rax)
	movl	actual_slabs(%rip), %eax
	subl	$1, %eax
	movl	%eax, actual_slabs(%rip)
	jmp	.L298
.L302:
	nop
	jmp	.L298
.L303:
	nop
.L298:
	addq	$8504, -16(%rbp)
.L296:
	movl	slabs(%rip), %eax
	cltq
	imulq	$8504, %rax, %rax
	leaq	slabinfo(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L301
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	rename_slabs, .-rename_slabs
	.type	slab_mismatch, @function
slab_mismatch:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	pattern(%rip), %rdi
	call	regexec@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	slab_mismatch, .-slab_mismatch
	.section	.rodata
.LC118:
	.string	"/sys/kernel/slab"
.LC119:
	.string	"/sys/slab"
	.align 8
.LC120:
	.string	"SYSFS support for SLUB not active\n"
.LC121:
	.string	"."
.LC122:
	.string	"Cannot read symlink %s\n"
.LC123:
	.string	"Unable to access slab %s\n"
.LC124:
	.string	"aliases"
.LC125:
	.string	"align"
.LC126:
	.string	"cache_dma"
.LC127:
	.string	"cpu_slabs"
.LC128:
	.string	"destroy_by_rcu"
.LC129:
	.string	"hwcache_align"
.LC130:
	.string	"object_size"
.LC131:
	.string	"objects"
.LC132:
	.string	"objects_partial"
.LC133:
	.string	"objects_total"
.LC134:
	.string	"objs_per_slab"
.LC135:
	.string	"order"
.LC136:
	.string	"partial"
.LC137:
	.string	"reclaim_account"
.LC138:
	.string	"slab_size"
.LC139:
	.string	"slabs"
.LC140:
	.string	"alloc_fastpath"
.LC141:
	.string	"alloc_slowpath"
.LC142:
	.string	"free_fastpath"
.LC143:
	.string	"free_slowpath"
.LC144:
	.string	"free_frozen"
.LC145:
	.string	"free_add_partial"
.LC146:
	.string	"free_remove_partial"
.LC147:
	.string	"alloc_from_partial"
.LC148:
	.string	"alloc_slab"
.LC149:
	.string	"alloc_refill"
.LC150:
	.string	"free_slab"
.LC151:
	.string	"cpuslab_flush"
.LC152:
	.string	"deactivate_full"
.LC153:
	.string	"deactivate_empty"
.LC154:
	.string	"deactivate_to_head"
.LC155:
	.string	"deactivate_to_tail"
.LC156:
	.string	"deactivate_remote_frees"
.LC157:
	.string	"order_fallback"
.LC158:
	.string	"cmpxchg_double_cpu_fail"
.LC159:
	.string	"cmpxchg_double_fail"
.LC160:
	.string	"cpu_partial_alloc"
.LC161:
	.string	"cpu_partial_free"
.LC162:
	.string	"alloc_node_mismatch"
.LC163:
	.string	"deactivate_bypass"
.LC164:
	.string	".."
.LC165:
	.string	"Unknown file type %lx\n"
.LC166:
	.string	"Too many slabs\n"
.LC167:
	.string	"Too many aliases\n"
	.text
	.type	read_slab_dir, @function
read_slab_dir:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	slabinfo(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	aliasinfo(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC118(%rip), %rdi
	call	chdir@PLT
	testl	%eax, %eax
	je	.L307
	leaq	.LC119(%rip), %rdi
	call	chdir@PLT
	testl	%eax, %eax
	je	.L307
	leaq	.LC120(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L307:
	leaq	.LC121(%rip), %rdi
	call	opendir@PLT
	movq	%rax, -24(%rbp)
	jmp	.L308
.L319:
	movq	-16(%rbp), %rax
	movzbl	19(%rax), %eax
	cmpb	$46, %al
	je	.L308
	movq	-16(%rbp), %rax
	movzbl	19(%rax), %eax
	cmpb	$58, %al
	je	.L310
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rdi
	call	slab_mismatch
	testl	%eax, %eax
	je	.L310
	jmp	.L308
.L310:
	movq	-16(%rbp), %rax
	movzbl	18(%rax), %eax
	movzbl	%al, %eax
	cmpl	$4, %eax
	je	.L311
	cmpl	$10, %eax
	jne	.L312
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movl	$4095, %edx
	leaq	buffer(%rip), %rsi
	movq	%rax, %rdi
	call	readlink@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L313
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rsi
	leaq	.LC122(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L313:
	movl	-60(%rbp), %eax
	cltq
	leaq	buffer(%rip), %rdx
	movb	$0, (%rax,%rdx)
	movl	-60(%rbp), %eax
	cltq
	leaq	buffer(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L314
.L316:
	subq	$1, -32(%rbp)
.L314:
	leaq	buffer(%rip), %rax
	cmpq	%rax, -32(%rbp)
	jbe	.L315
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L316
.L315:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$24, -40(%rbp)
	jmp	.L308
.L311:
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rdi
	call	chdir@PLT
	testl	%eax, %eax
	je	.L317
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC123(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L317:
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 12(%rax)
	leaq	.LC124(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	leaq	.LC125(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 20(%rax)
	leaq	.LC126(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 24(%rax)
	leaq	.LC127(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 28(%rax)
	leaq	.LC128(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 32(%rax)
	leaq	.LC129(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 36(%rax)
	leaq	.LC130(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 40(%rax)
	leaq	.LC131(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 88(%rdx)
	leaq	.LC132(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 104(%rdx)
	leaq	.LC133(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 112(%rdx)
	leaq	.LC134(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 44(%rax)
	leaq	.LC135(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 64(%rax)
	leaq	.LC136(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 80(%rdx)
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC136(%rip), %rdi
	call	get_obj_and_str
	movq	-48(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	$4408, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	decode_numa_list
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC83(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 68(%rax)
	leaq	.LC137(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 72(%rax)
	leaq	.LC80(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 76(%rax)
	leaq	.LC78(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 48(%rax)
	leaq	.LC138(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 52(%rax)
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC139(%rip), %rdi
	call	get_obj_and_str
	movq	-48(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	$312, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	decode_numa_list
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC86(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 56(%rax)
	leaq	.LC89(%rip), %rdi
	call	get_obj
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 60(%rax)
	leaq	.LC140(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 120(%rdx)
	leaq	.LC141(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 128(%rdx)
	leaq	.LC142(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 136(%rdx)
	leaq	.LC143(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 144(%rdx)
	leaq	.LC144(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 152(%rdx)
	leaq	.LC145(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 160(%rdx)
	leaq	.LC146(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 168(%rdx)
	leaq	.LC147(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 176(%rdx)
	leaq	.LC148(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 184(%rdx)
	leaq	.LC149(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 200(%rdx)
	leaq	.LC150(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 192(%rdx)
	leaq	.LC151(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 208(%rdx)
	leaq	.LC152(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 216(%rdx)
	leaq	.LC153(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 224(%rdx)
	leaq	.LC154(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 232(%rdx)
	leaq	.LC155(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 240(%rdx)
	leaq	.LC156(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 248(%rdx)
	leaq	.LC157(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 256(%rdx)
	leaq	.LC158(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 264(%rdx)
	leaq	.LC159(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 272(%rdx)
	leaq	.LC160(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 296(%rdx)
	leaq	.LC161(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 304(%rdx)
	leaq	.LC162(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 280(%rdx)
	leaq	.LC163(%rip), %rdi
	call	get_obj
	movq	-48(%rbp), %rdx
	movq	%rax, 288(%rdx)
	leaq	.LC164(%rip), %rdi
	call	chdir@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L318
	movl	alias_targets(%rip), %eax
	addl	$1, %eax
	movl	%eax, alias_targets(%rip)
.L318:
	addq	$8504, -48(%rbp)
	jmp	.L308
.L312:
	movq	-16(%rbp), %rax
	movzbl	18(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC165(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L308:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L319
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	leaq	slabinfo(%rip), %rdx
	movq	-48(%rbp), %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$5917535022704569239, %rax
	imulq	%rdx, %rax
	movl	%eax, slabs(%rip)
	movl	slabs(%rip), %eax
	movl	%eax, actual_slabs(%rip)
	leaq	aliasinfo(%rip), %rdx
	movq	-40(%rbp), %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
	imulq	%rdx, %rax
	movl	%eax, aliases(%rip)
	movl	slabs(%rip), %eax
	cmpl	$500, %eax
	jle	.L320
	leaq	.LC166(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L320:
	movl	aliases(%rip), %eax
	cmpl	$500, %eax
	jle	.L323
	leaq	.LC167(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L323:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L322
	call	__stack_chk_fail@PLT
.L322:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	read_slab_dir, .-read_slab_dir
	.type	output_slabs, @function
output_slabs:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	output_lines(%rip), %eax
	movl	%eax, -12(%rbp)
	leaq	slabinfo(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L325
.L337:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L338
	cmpl	$-1, -12(%rbp)
	je	.L328
	subl	$1, -12(%rbp)
.L328:
	movl	show_numa(%rip), %eax
	testl	%eax, %eax
	je	.L329
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	slab_numa
	jmp	.L327
.L329:
	movl	show_track(%rip), %eax
	testl	%eax, %eax
	je	.L330
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	show_tracking
	jmp	.L327
.L330:
	movl	validate(%rip), %eax
	testl	%eax, %eax
	je	.L331
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_validate
	jmp	.L327
.L331:
	movl	shrink(%rip), %eax
	testl	%eax, %eax
	je	.L332
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_shrink
	jmp	.L327
.L332:
	movl	set_debug(%rip), %eax
	testl	%eax, %eax
	je	.L333
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slab_debug
	jmp	.L327
.L333:
	movl	show_ops(%rip), %eax
	testl	%eax, %eax
	je	.L334
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ops
	jmp	.L327
.L334:
	movl	show_slab(%rip), %eax
	testl	%eax, %eax
	je	.L335
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	slabcache
	jmp	.L327
.L335:
	movl	show_report(%rip), %eax
	testl	%eax, %eax
	je	.L327
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	report
	jmp	.L327
.L338:
	nop
.L327:
	addq	$8504, -8(%rbp)
.L325:
	movl	slabs(%rip), %eax
	cltq
	imulq	$8504, %rax, %rax
	leaq	slabinfo(%rip), %rdx
	addq	%rdx, %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L339
	cmpl	$0, -12(%rbp)
	jne	.L337
.L339:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	output_slabs, .-output_slabs
	.section	.rodata
.LC168:
	.string	"%s%s"
	.text
	.type	_xtotals, @function
_xtotals:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC168(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, line(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, sort_loss(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, sort_size(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, sort_partial(%rip)
	call	sort_slabs
	call	output_slabs
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	_xtotals, .-_xtotals
	.section	.rodata
.LC169:
	.string	"\nSlabs sorted by size\n"
.LC170:
	.string	"--------------------\n"
.LC171:
	.string	"\nSlabs sorted by loss\n"
	.align 8
.LC172:
	.string	"\nSlabs sorted by number of partial slabs\n"
	.align 8
.LC173:
	.string	"---------------------------------------\n"
	.text
	.type	xtotals, @function
xtotals:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	totals
	call	link_slabs
	call	rename_slabs
	leaq	.LC169(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC170(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_xtotals
	leaq	.LC171(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC170(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_xtotals
	leaq	.LC172(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC173(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_xtotals
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	xtotals, .-xtotals
	.globl	opts
	.section	.rodata
.LC174:
	.string	"activity"
.LC175:
	.string	"Bytes"
.LC176:
	.string	"debug"
.LC177:
	.string	"display-activity"
.LC178:
	.string	"empty"
.LC179:
	.string	"first-alias"
.LC180:
	.string	"help"
.LC181:
	.string	"inverted"
.LC182:
	.string	"Loss"
.LC183:
	.string	"numa"
.LC184:
	.string	"lines"
.LC185:
	.string	"report"
.LC186:
	.string	"Size"
.LC187:
	.string	"tracking"
.LC188:
	.string	"Totals"
.LC189:
	.string	"Unreclaim"
.LC190:
	.string	"Xtotals"
.LC191:
	.string	"zero"
.LC192:
	.string	"1ref"
	.section	.data.rel.local,"aw"
	.align 32
	.type	opts, @object
	.size	opts, 832
opts:
	.quad	.LC124
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC174
	.long	0
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	.LC175
	.long	0
	.zero	4
	.quad	0
	.long	66
	.zero	4
	.quad	.LC176
	.long	2
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC177
	.long	0
	.zero	4
	.quad	0
	.long	68
	.zero	4
	.quad	.LC178
	.long	0
	.zero	4
	.quad	0
	.long	101
	.zero	4
	.quad	.LC179
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC180
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC181
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC139
	.long	0
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC182
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC183
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC184
	.long	1
	.zero	4
	.quad	0
	.long	78
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC136
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC185
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC9
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC186
	.long	0
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC187
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC188
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC189
	.long	0
	.zero	4
	.quad	0
	.long	85
	.zero	4
	.quad	.LC8
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC190
	.long	0
	.zero	4
	.quad	0
	.long	88
	.zero	4
	.quad	.LC191
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC192
	.long	0
	.zero	4
	.quad	0
	.long	49
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata
.LC193:
	.string	"Invalid debug option '%s'\n"
.LC194:
	.string	"%s: Invalid option '%c'\n"
.LC195:
	.string	"aABd::DefhilLnN:oPrsStTUvXz1"
.LC196:
	.string	".*"
	.align 8
.LC197:
	.string	"%s: Invalid pattern '%s' code %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB43:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	call	getpagesize@PLT
	movl	%eax, page_size(%rip)
	jmp	.L343
.L375:
	movl	-16(%rbp), %eax
	subl	$49, %eax
	cmpl	$73, %eax
	ja	.L344
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L346(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L346(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L346:
	.long	.L370-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L369-.L346
	.long	.L368-.L346
	.long	.L344-.L346
	.long	.L367-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L366-.L346
	.long	.L344-.L346
	.long	.L365-.L346
	.long	.L344-.L346
	.long	.L364-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L363-.L346
	.long	.L362-.L346
	.long	.L361-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L360-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L359-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L358-.L346
	.long	.L357-.L346
	.long	.L356-.L346
	.long	.L344-.L346
	.long	.L355-.L346
	.long	.L354-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L353-.L346
	.long	.L344-.L346
	.long	.L352-.L346
	.long	.L351-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L350-.L346
	.long	.L349-.L346
	.long	.L348-.L346
	.long	.L344-.L346
	.long	.L347-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L344-.L346
	.long	.L345-.L346
	.text
.L359:
	movl	$1, show_alias(%rip)
	jmp	.L343
.L369:
	movl	$1, sort_active(%rip)
	jmp	.L343
.L368:
	movl	$1, show_bytes(%rip)
	jmp	.L343
.L358:
	movl	$1, set_debug(%rip)
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	debug_opt_scan
	testl	%eax, %eax
	jne	.L343
	movq	optarg(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC193(%rip), %rdi
	movl	$0, %eax
	call	fatal
	jmp	.L343
.L367:
	movl	$1, show_activity(%rip)
	jmp	.L343
.L357:
	movl	$1, show_empty(%rip)
	jmp	.L343
.L356:
	movl	$1, show_first_alias(%rip)
	jmp	.L343
.L355:
	call	usage
	movl	$0, %eax
	jmp	.L372
.L354:
	movl	$1, show_inverted(%rip)
	jmp	.L343
.L353:
	movl	$1, show_slab(%rip)
	jmp	.L343
.L366:
	movl	$1, sort_loss(%rip)
	jmp	.L343
.L352:
	movl	$1, show_numa(%rip)
	jmp	.L343
.L365:
	movq	optarg(%rip), %rax
	testq	%rax, %rax
	je	.L343
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, output_lines(%rip)
	movl	output_lines(%rip), %eax
	testl	%eax, %eax
	jg	.L343
	movl	$1, output_lines(%rip)
	jmp	.L343
.L351:
	movl	$1, show_ops(%rip)
	jmp	.L343
.L350:
	movl	$1, show_report(%rip)
	jmp	.L343
.L364:
	movl	$1, sort_partial(%rip)
	jmp	.L343
.L349:
	movl	$1, shrink(%rip)
	jmp	.L343
.L363:
	movl	$1, sort_size(%rip)
	jmp	.L343
.L348:
	movl	$1, show_track(%rip)
	jmp	.L343
.L362:
	movl	$1, show_totals(%rip)
	jmp	.L343
.L361:
	movl	$1, unreclaim_only(%rip)
	jmp	.L343
.L347:
	movl	$1, validate(%rip)
	jmp	.L343
.L360:
	movl	output_lines(%rip), %eax
	cmpl	$-1, %eax
	jne	.L374
	movl	$1, output_lines(%rip)
.L374:
	movl	$1, extended_totals(%rip)
	movl	$1, show_bytes(%rip)
	jmp	.L343
.L345:
	movl	$0, skip_zero(%rip)
	jmp	.L343
.L370:
	movl	$1, show_single_ref(%rip)
	jmp	.L343
.L344:
	movl	optopt(%rip), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC194(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L343:
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	leaq	opts(%rip), %rcx
	leaq	.LC195(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	jne	.L375
	movl	show_slab(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	show_alias(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	show_track(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	show_report(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	validate(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	shrink(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	set_debug(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	show_ops(%rip), %eax
	testl	%eax, %eax
	jne	.L376
	movl	$1, show_slab(%rip)
.L376:
	movl	optind(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L377
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L378
.L377:
	leaq	.LC196(%rip), %rax
	movq	%rax, -8(%rbp)
.L378:
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	leaq	pattern(%rip), %rdi
	call	regcomp@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L379
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC197(%rip), %rdi
	movl	$0, %eax
	call	fatal
.L379:
	call	read_slab_dir
	movl	show_alias(%rip), %eax
	testl	%eax, %eax
	je	.L380
	call	alias
	jmp	.L381
.L380:
	movl	extended_totals(%rip), %eax
	testl	%eax, %eax
	je	.L382
	call	xtotals
	jmp	.L381
.L382:
	movl	show_totals(%rip), %eax
	testl	%eax, %eax
	je	.L383
	call	totals
	jmp	.L381
.L383:
	call	link_slabs
	call	rename_slabs
	call	sort_slabs
	call	output_slabs
.L381:
	movl	$0, %eax
.L372:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 10.2.0-13ubuntu1) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
