	.file	"hello.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv64-unknown-elf)
#	compiled by GNU C version 4.2.1 Compatible Apple LLVM 10.0.0 (clang-1000.10.44.4), GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  hello.c -march=rv64imafdc -mabi=lp64d
# -auxbase-strip hello.s -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mdiv -mexplicit-relocs -mfdiv -mplt
# -mstrict-align

	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello RISC-V"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp74, argc
	sd	a1,-32(s0)	# argv, argv
	sw	a5,-20(s0)	# tmp75, argc
# hello.c:5:         printf("Hello RISC-V\n");
	lui	a5,%hi(.LC0)	# tmp76,
	addi	a0,a5,%lo(.LC0)	#, tmp76,
	call	puts		#
# hello.c:6:         return 0;
	li	a5,0		# _3,
# hello.c:7: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.0"
