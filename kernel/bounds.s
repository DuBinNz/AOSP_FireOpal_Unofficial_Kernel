	.arch armv8-a+crc
	.file	"bounds.c"
// GNU C89 (UBERTC-6.x.x) version 6.3.1 20170528 (aarch64-linux-android)
//	compiled by GNU C version 7.0.1 20170407 (experimental) [trunk revision 246759], GMP version 6.1.99, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc -I ./arch/arm64/include
// -I arch/arm64/include/generated -I include -I ./arch/arm64/include/uapi
// -I arch/arm64/include/generated/uapi -I ./include/uapi
// -I include/generated/uapi
// -iprefix /mnt/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/6.3.1/
// -D __KERNEL__ -D NDEBUG -D KBUILD_STR(s)=#s
// -D KBUILD_BASENAME=KBUILD_STR(bounds)
// -D KBUILD_MODNAME=KBUILD_STR(bounds)
// -isystem /mnt/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/6.3.1/include
// -include ./include/linux/kconfig.h -MD kernel/.bounds.s.d
// kernel/bounds.c -mbionic -mlittle-endian -mlow-precision-recip-sqrt
// -mcpu=cortex-a57.cortex-a53 -mtune=cortex-a57.cortex-a53
// -mgeneral-regs-only -mpc-relative-literal-loads -mabi=lp64
// -auxbase-strip kernel/bounds.s -g0 -g -Ofast -Ofast -Wall -Wundef
// -Wstrict-prototypes -Wno-trigraphs -Werror=implicit-function-declaration
// -Wno-format-security -Wno-frame-address -Wframe-larger-than=2048
// -Wno-unused-but-set-variable -Wunused-const-variable=0
// -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
// -Werror=strict-prototypes -Werror=date-time -std=gnu90
// -fno-strict-aliasing -fno-common -fgraphite -fgraphite-identity -fivopts
// -fmodulo-sched -fmodulo-sched-allow-regmoves -ftree-loop-distribution
// -floop-nest-optimize -fno-delete-null-pointer-checks -fno-PIE
// -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls
// -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
// -fverbose-asm --param allow-store-data-races=0
// options enabled:  -faggressive-loop-optimizations -falign-labels
// -fassociative-math -fauto-inc-dec -fbranch-count-reg -fcaller-saves
// -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
// -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
// -fchkp-store-bounds -fchkp-use-static-bounds
// -fchkp-use-static-const-bounds -fchkp-use-wrappers
// -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
// -fcrossjumping -fcse-follow-jumps -fcx-limited-range -fdefer-pop
// -fdevirtualize -fdevirtualize-speculatively -fdwarf2-cfi-asm
// -fearly-inlining -feliminate-unused-debug-types
// -fexpensive-optimizations -ffinite-math-only -fforward-propagate
// -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-runtime
// -fgnu-unique -fgraphite -fgraphite-identity -fguess-branch-probability
// -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
// -findirect-inlining -finline -finline-atomics -finline-functions
// -finline-functions-called-once -finline-small-functions -fipa-cp
// -fipa-cp-alignment -fipa-cp-clone -fipa-icf -fipa-icf-functions
// -fipa-icf-variables -fipa-profile -fipa-pure-const -fipa-ra
// -fipa-reference -fipa-sra -fira-hoist-pressure -fira-share-save-slots
// -fira-share-spill-slots -fisolate-erroneous-paths-dereference -fivopts
// -fkeep-static-consts -fleading-underscore -flifetime-dse
// -floop-nest-optimize -flra-remat -flto-odr-type-merging
// -fmerge-constants -fmerge-debug-strings -fmodulo-sched
// -fmodulo-sched-allow-regmoves -fmove-loop-invariants
// -fomit-frame-pointer -foptimize-strlen -fpartial-inlining -fpeephole
// -fpeephole2 -fplt -fpredictive-commoning -fprefetch-loop-arrays
// -freciprocal-math -free -freg-struct-return -freorder-blocks
// -freorder-functions -frerun-cse-after-loop
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-pressure -fsched-rank-heuristic -fsched-spec
// -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
// -fschedule-insns -fschedule-insns2 -fsection-anchors
// -fsemantic-interposition -fshow-column -fshrink-wrap
// -fsplit-ivs-in-unroller -fsplit-paths -fsplit-wide-types -fssa-backprop
// -fssa-phiopt -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls
// -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp -ftree-builtin-call-dce
// -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
// -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
// -ftree-loop-distribute-patterns -ftree-loop-distribution
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
// -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
// -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr
// -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
// -ftree-vrp -funit-at-a-time -funsafe-math-optimizations -funswitch-loops
// -fvar-tracking -fverbose-asm -fzero-initialized-in-bss -mandroid
// -mbionic -mfix-cortex-a53-835769 -mfix-cortex-a53-843419
// -mgeneral-regs-only -mlittle-endian -momit-leaf-frame-pointer
// -mpc-relative-literal-loads

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.p2align 4,,15
	.global	foo
	.type	foo, %function
foo:
.LFB129:
	.file 1 "kernel/bounds.c"
	.loc 1 16 0
	.cfi_startproc
	.loc 1 18 0
#APP
// 18 "kernel/bounds.c" 1
	
->NR_PAGEFLAGS 22 __NR_PAGEFLAGS	//
// 0 "" 2
	.loc 1 19 0
// 19 "kernel/bounds.c" 1
	
->MAX_NR_ZONES 2 __MAX_NR_ZONES	//
// 0 "" 2
	.loc 1 21 0
// 21 "kernel/bounds.c" 1
	
->NR_CPUS_BITS 3 ilog2(CONFIG_NR_CPUS)	//
// 0 "" 2
	.loc 1 23 0
// 23 "kernel/bounds.c" 1
	
->SPINLOCK_SIZE 4 sizeof(spinlock_t)	//
// 0 "" 2
#NO_APP
	ret
	.cfi_endproc
.LFE129:
	.size	foo, .-foo
.Letext0:
	.file 2 "include/linux/types.h"
	.file 3 "include/linux/init.h"
	.file 4 "./arch/arm64/include/asm/cachetype.h"
	.file 5 "include/linux/printk.h"
	.file 6 "include/linux/kernel.h"
	.file 7 "include/linux/page-flags.h"
	.file 8 "include/linux/mmzone.h"
	.file 9 "include/linux/lockdep.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3ab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x1
	.4byte	.LASF89
	.4byte	.LASF90
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	0x73
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x8
	.4byte	0x73
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x1d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x93
	.4byte	0xa9
	.uleb128 0x5
	.byte	0x8
	.4byte	0xaf
	.uleb128 0x7
	.4byte	0x49
	.uleb128 0x5
	.byte	0x8
	.4byte	0xba
	.uleb128 0x8
	.uleb128 0x9
	.4byte	0x9e
	.4byte	0xc6
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x3
	.byte	0x96
	.4byte	0xbb
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0x96
	.4byte	0xbb
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0x97
	.4byte	0xbb
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0x97
	.4byte	0xbb
	.uleb128 0x9
	.4byte	0x73
	.4byte	0xfd
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x3
	.byte	0x9e
	.4byte	0xf2
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x3
	.byte	0x9f
	.4byte	0x86
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0xa0
	.4byte	0x50
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x3
	.byte	0xa8
	.4byte	0xb4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x3
	.byte	0xaa
	.4byte	0x8c
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x28
	.4byte	0x65
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x14a
	.uleb128 0xa
	.byte	0
	.uleb128 0x4
	.4byte	0x13f
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0xa
	.4byte	0x14a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0xb
	.4byte	0x14a
	.uleb128 0x9
	.4byte	0x49
	.4byte	0x170
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x32
	.4byte	0x165
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0xa2
	.4byte	0x49
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0xa3
	.4byte	0x49
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0xa4
	.4byte	0x49
	.uleb128 0xc
	.4byte	.LASF31
	.uleb128 0x4
	.4byte	0x19c
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x1af
	.4byte	0x1a1
	.uleb128 0xc
	.4byte	.LASF32
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0xeb
	.4byte	0x1b2
	.uleb128 0xe
	.4byte	0x7f
	.4byte	0x1d1
	.uleb128 0xf
	.4byte	0x49
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0xec
	.4byte	0x1dc
	.uleb128 0x5
	.byte	0x8
	.4byte	0x1c2
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x1a8
	.4byte	0x49
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x1a9
	.4byte	0x49
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x1aa
	.4byte	0x49
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x1ab
	.4byte	0x49
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x1ac
	.4byte	0x49
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x1ad
	.4byte	0x49
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x1bf
	.4byte	0x49
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x1c1
	.4byte	0x8c
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x4
	.4byte	0x50
	.byte	0x6
	.2byte	0x1c4
	.4byte	0x272
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x1ca
	.4byte	0x242
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x1dc
	.4byte	0x14a
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x1e7
	.4byte	0x14a
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x337
	.4byte	0x86
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x4
	.4byte	0x50
	.byte	0x7
	.byte	0x4a
	.4byte	0x35b
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x11
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x12
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x13
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x15
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x16
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x4
	.4byte	0x50
	.byte	0x8
	.2byte	0x112
	.4byte	0x37f
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x9
	.byte	0x10
	.4byte	0x49
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x9
	.byte	0x11
	.4byte	0x49
	.uleb128 0x13
	.string	"foo"
	.byte	0x1
	.byte	0xf
	.8byte	.LFB129
	.8byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"PG_checked"
.LASF82:
	.string	"zone_type"
.LASF30:
	.string	"kmsg_fops"
.LASF50:
	.string	"hex_asc_upper"
.LASF24:
	.string	"linux_banner"
.LASF38:
	.string	"panic_on_unrecovered_nmi"
.LASF6:
	.string	"long long unsigned int"
.LASF47:
	.string	"SYSTEM_RESTART"
.LASF34:
	.string	"panic_blink"
.LASF45:
	.string	"SYSTEM_HALT"
.LASF76:
	.string	"__NR_PAGEFLAGS"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"__security_initcall_end"
.LASF19:
	.string	"saved_command_line"
.LASF66:
	.string	"PG_private_2"
.LASF43:
	.string	"SYSTEM_BOOTING"
.LASF90:
	.string	"/mnt/AOSP_FireOpal_Unofficial_Kernel"
.LASF89:
	.string	"kernel/bounds.c"
.LASF10:
	.string	"long int"
.LASF63:
	.string	"PG_arch_1"
.LASF69:
	.string	"PG_tail"
.LASF25:
	.string	"linux_proc_banner"
.LASF54:
	.string	"PG_locked"
.LASF59:
	.string	"PG_lru"
.LASF56:
	.string	"PG_referenced"
.LASF13:
	.string	"initcall_t"
.LASF31:
	.string	"file_operations"
.LASF4:
	.string	"unsigned int"
.LASF65:
	.string	"PG_private"
.LASF41:
	.string	"root_mountflags"
.LASF7:
	.string	"long unsigned int"
.LASF29:
	.string	"kptr_restrict"
.LASF32:
	.string	"atomic_notifier_head"
.LASF26:
	.string	"console_printk"
.LASF44:
	.string	"SYSTEM_RUNNING"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"bool"
.LASF80:
	.string	"PG_savepinned"
.LASF88:
	.ascii	"GNU C89 6.3.1 20170528 -mbionic -mlittle-endian -mlow-precis"
	.ascii	"ion-recip-sqrt -mcpu=cortex-a57.cortex-a53 -mtune=cortex-a57"
	.ascii	".cortex-a53 -mgeneral-regs-only -mpc-relative-literal-loads "
	.ascii	"-mabi=lp64 -g0 -g -Ofast -Ofast -std=gnu90 -fno-strict-alias"
	.ascii	"ing -fno-common -fgraphite -fgraphite-identity -fivopts -fmo"
	.ascii	"dulo-sched -fmodulo-sched-allow-regmoves -ftr"
	.string	"ee-loop-distribution -floop-nest-optimize -fno-delete-null-pointer-checks -fno-PIE -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack --param allow-store-data-races=0"
.LASF15:
	.string	"__con_initcall_end"
.LASF86:
	.string	"prove_locking"
.LASF72:
	.string	"PG_reclaim"
.LASF53:
	.string	"pageflags"
.LASF55:
	.string	"PG_error"
.LASF8:
	.string	"sizetype"
.LASF79:
	.string	"PG_pinned"
.LASF40:
	.string	"sysctl_panic_on_stackoverflow"
.LASF20:
	.string	"reset_devices"
.LASF48:
	.string	"system_state"
.LASF67:
	.string	"PG_writeback"
.LASF87:
	.string	"lock_stat"
.LASF75:
	.string	"PG_mlocked"
.LASF36:
	.string	"panic_timeout"
.LASF84:
	.string	"ZONE_MOVABLE"
.LASF16:
	.string	"__security_initcall_start"
.LASF33:
	.string	"panic_notifier_list"
.LASF71:
	.string	"PG_mappedtodisk"
.LASF83:
	.string	"ZONE_NORMAL"
.LASF57:
	.string	"PG_uptodate"
.LASF28:
	.string	"dmesg_restrict"
.LASF11:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"system_states"
.LASF70:
	.string	"PG_swapcache"
.LASF22:
	.string	"initcall_debug"
.LASF2:
	.string	"short int"
.LASF61:
	.string	"PG_slab"
.LASF85:
	.string	"__MAX_NR_ZONES"
.LASF58:
	.string	"PG_dirty"
.LASF46:
	.string	"SYSTEM_POWER_OFF"
.LASF35:
	.string	"oops_in_progress"
.LASF9:
	.string	"char"
.LASF68:
	.string	"PG_head"
.LASF81:
	.string	"PG_slob_free"
.LASF37:
	.string	"panic_on_oops"
.LASF18:
	.string	"boot_command_line"
.LASF62:
	.string	"PG_owner_priv_1"
.LASF27:
	.string	"printk_delay_msec"
.LASF42:
	.string	"early_boot_irqs_disabled"
.LASF39:
	.string	"panic_on_io_nmi"
.LASF64:
	.string	"PG_reserved"
.LASF51:
	.string	"mach_panic_string"
.LASF60:
	.string	"PG_active"
.LASF23:
	.string	"__icache_flags"
.LASF49:
	.string	"hex_asc"
.LASF78:
	.string	"PG_fscache"
.LASF14:
	.string	"__con_initcall_start"
.LASF21:
	.string	"late_time_init"
.LASF73:
	.string	"PG_swapbacked"
.LASF74:
	.string	"PG_unevictable"
	.ident	"GCC: (UBERTC-6.x.x) 6.3.1 20170528"
	.section	.note.GNU-stack,"",@progbits
