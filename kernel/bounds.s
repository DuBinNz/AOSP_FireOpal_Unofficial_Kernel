	.cpu cortex-a57+fp+simd+crypto+crc
	.file	"bounds.c"
// GNU C (UBERTC-4.9.x) version 4.9.4 (aarch64-linux-android)
//	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.99, MPFR version 3.1.4, MPC version 1.0.3
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc -I ./arch/arm64/include
// -I arch/arm64/include/generated -I include -I ./arch/arm64/include/uapi
// -I arch/arm64/include/generated/uapi -I ./include/uapi
// -I include/generated/uapi
// -iprefix /home/muhammed/Desktop/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/4.9.4/
// -D __KERNEL__ -D NDEBUG -D KBUILD_STR(s)=#s
// -D KBUILD_BASENAME=KBUILD_STR(bounds)
// -D KBUILD_MODNAME=KBUILD_STR(bounds)
// -isystem /home/muhammed/Desktop/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/4.9.4/include
// -include ./include/linux/kconfig.h -MD kernel/.bounds.s.d
// kernel/bounds.c -mbionic -mlittle-endian -mcpu=cortex-a57.cortex-a53
// -mtune=cortex-a57.cortex-a53 -mgeneral-regs-only -mabi=lp64
// -auxbase-strip kernel/bounds.s -g0 -g -Ofast -Ofast -Wall -Wundef
// -Wstrict-prototypes -Wno-trigraphs -Werror=implicit-function-declaration
// -Wno-format-security -Wframe-larger-than=2048
// -Wno-unused-but-set-variable -Wdeclaration-after-statement
// -Wno-pointer-sign -Werror=implicit-int -Werror=strict-prototypes
// -Werror=date-time -std=gnu90 -fno-strict-aliasing -fno-common -fgraphite
// -fgraphite-identity -fivopts -floop-block -floop-strip-mine
// -fmodulo-sched -fmodulo-sched-allow-regmoves -ftree-loop-distribution
// -floop-interchange -fno-delete-null-pointer-checks -fno-PIE
// -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls
// -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
// -fverbose-asm --param allow-store-data-races=0
// options enabled:  -faggressive-loop-optimizations -fassociative-math
// -fauto-inc-dec -fbranch-count-reg -fcaller-saves
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
// -fipa-cp-clone -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
// -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -floop-block -floop-interchange
// -floop-strip-mine -fmerge-constants -fmerge-debug-strings -fmodulo-sched
// -fmodulo-sched-allow-regmoves -fmove-loop-invariants
// -fomit-frame-pointer -foptimize-strlen -fpartial-inlining -fpeephole
// -fpeephole2 -fpredictive-commoning -fprefetch-loop-arrays
// -freciprocal-math -free -freg-struct-return -freorder-blocks
// -freorder-functions -frerun-cse-after-loop
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
// -fsched-stalled-insns-dep -fschedule-insns -fschedule-insns2
// -fsection-anchors -fshow-column -fshrink-wrap -fsplit-ivs-in-unroller
// -fsplit-wide-types -fstrict-volatile-bitfields -fsync-libcalls
// -fthread-jumps -ftoplevel-reorder -ftree-bit-ccp -ftree-builtin-call-dce
// -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
// -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
// -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
// -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
// -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
// -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
// -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
// -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
// -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time
// -funsafe-math-optimizations -funswitch-loops -fvar-tracking
// -fverbose-asm -fzero-initialized-in-bss -mandroid -mbionic
// -mfix-cortex-a53-835769 -mgeneral-regs-only -mlittle-endian -mlra
// -momit-leaf-frame-pointer

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
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
	.loc 1 25 0
#NO_APP
	ret
	.cfi_endproc
.LFE129:
	.size	foo, .-foo
.Letext0:
	.file 2 "include/linux/page-flags.h"
	.file 3 "include/linux/mmzone.h"
	.file 4 "./arch/arm64/include/asm/cachetype.h"
	.file 5 "include/linux/printk.h"
	.file 6 "include/linux/kernel.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1cd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1
	.4byte	.LASF51
	.4byte	.LASF52
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x4
	.byte	0x2
	.byte	0x4a
	.4byte	0x13d
	.uleb128 0x5
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF13
	.sleb128 1
	.uleb128 0x5
	.4byte	.LASF14
	.sleb128 2
	.uleb128 0x5
	.4byte	.LASF15
	.sleb128 3
	.uleb128 0x5
	.4byte	.LASF16
	.sleb128 4
	.uleb128 0x5
	.4byte	.LASF17
	.sleb128 5
	.uleb128 0x5
	.4byte	.LASF18
	.sleb128 6
	.uleb128 0x5
	.4byte	.LASF19
	.sleb128 7
	.uleb128 0x5
	.4byte	.LASF20
	.sleb128 8
	.uleb128 0x5
	.4byte	.LASF21
	.sleb128 9
	.uleb128 0x5
	.4byte	.LASF22
	.sleb128 10
	.uleb128 0x5
	.4byte	.LASF23
	.sleb128 11
	.uleb128 0x5
	.4byte	.LASF24
	.sleb128 12
	.uleb128 0x5
	.4byte	.LASF25
	.sleb128 13
	.uleb128 0x5
	.4byte	.LASF26
	.sleb128 14
	.uleb128 0x5
	.4byte	.LASF27
	.sleb128 15
	.uleb128 0x5
	.4byte	.LASF28
	.sleb128 16
	.uleb128 0x5
	.4byte	.LASF29
	.sleb128 17
	.uleb128 0x5
	.4byte	.LASF30
	.sleb128 18
	.uleb128 0x5
	.4byte	.LASF31
	.sleb128 19
	.uleb128 0x5
	.4byte	.LASF32
	.sleb128 20
	.uleb128 0x5
	.4byte	.LASF33
	.sleb128 21
	.uleb128 0x5
	.4byte	.LASF34
	.sleb128 22
	.uleb128 0x5
	.4byte	.LASF35
	.sleb128 8
	.uleb128 0x5
	.4byte	.LASF36
	.sleb128 12
	.uleb128 0x5
	.4byte	.LASF37
	.sleb128 8
	.uleb128 0x5
	.4byte	.LASF38
	.sleb128 4
	.uleb128 0x5
	.4byte	.LASF39
	.sleb128 11
	.byte	0
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x4
	.byte	0x3
	.2byte	0x112
	.4byte	0x15d
	.uleb128 0x5
	.4byte	.LASF42
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF43
	.sleb128 1
	.uleb128 0x5
	.4byte	.LASF44
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.string	"foo"
	.byte	0x1
	.byte	0xf
	.8byte	.LFB129
	.8byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x4
	.byte	0x28
	.4byte	0x65
	.uleb128 0x9
	.4byte	0x49
	.4byte	0x18c
	.uleb128 0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x5
	.byte	0x32
	.4byte	0x181
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x1a9
	.4byte	0x49
	.uleb128 0x9
	.4byte	0x73
	.4byte	0x1ae
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x1dc
	.4byte	0x1ba
	.uleb128 0xc
	.4byte	0x1a3
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x1e7
	.4byte	0x1cb
	.uleb128 0xc
	.4byte	0x1a3
	.byte	0
	.section	.debug_abbrev,"",%progbits
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF26:
	.string	"PG_head"
.LASF46:
	.string	"console_printk"
.LASF22:
	.string	"PG_reserved"
.LASF42:
	.string	"ZONE_NORMAL"
.LASF29:
	.string	"PG_mappedtodisk"
.LASF12:
	.string	"PG_locked"
.LASF16:
	.string	"PG_dirty"
.LASF25:
	.string	"PG_writeback"
.LASF45:
	.string	"__icache_flags"
.LASF23:
	.string	"PG_private"
.LASF34:
	.string	"__NR_PAGEFLAGS"
.LASF44:
	.string	"__MAX_NR_ZONES"
.LASF36:
	.string	"PG_fscache"
.LASF52:
	.string	"/home/muhammed/Desktop/AOSP_FireOpal_Pure_Kernel"
.LASF14:
	.string	"PG_referenced"
.LASF28:
	.string	"PG_swapcache"
.LASF41:
	.string	"zone_type"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF31:
	.string	"PG_swapbacked"
.LASF35:
	.string	"PG_checked"
.LASF1:
	.string	"unsigned char"
.LASF51:
	.string	"kernel/bounds.c"
.LASF27:
	.string	"PG_tail"
.LASF40:
	.string	"pageflags"
.LASF4:
	.string	"unsigned int"
.LASF13:
	.string	"PG_error"
.LASF6:
	.string	"long long unsigned int"
.LASF37:
	.string	"PG_pinned"
.LASF19:
	.string	"PG_slab"
.LASF20:
	.string	"PG_owner_priv_1"
.LASF49:
	.string	"hex_asc_upper"
.LASF18:
	.string	"PG_active"
.LASF8:
	.string	"sizetype"
.LASF24:
	.string	"PG_private_2"
.LASF5:
	.string	"long long int"
.LASF17:
	.string	"PG_lru"
.LASF9:
	.string	"char"
.LASF32:
	.string	"PG_unevictable"
.LASF38:
	.string	"PG_savepinned"
.LASF50:
	.ascii	"GNU C 4.9.4 -mbionic -mlittle-endian -mcpu=cortex-a57.cortex"
	.ascii	"-a53 -mtune=cortex-a57.cortex-a53 -mgeneral-regs-only -mabi="
	.ascii	"lp64 -g0 -g -Ofast -Ofast -std=gnu90 -fno-strict-aliasing -f"
	.ascii	"no-common -fgraphite -fgraphite-identity -fivopts -floop-blo"
	.ascii	"ck -floop-strip-mine -fmodulo-sched -fmodulo-sched-allow-reg"
	.ascii	"moves -f"
	.string	"tree-loop-distribution -floop-interchange -fno-delete-null-pointer-checks -fno-PIE -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack --param allow-store-data-races=0"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"hex_asc"
.LASF21:
	.string	"PG_arch_1"
.LASF10:
	.string	"long int"
.LASF43:
	.string	"ZONE_MOVABLE"
.LASF15:
	.string	"PG_uptodate"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"PG_reclaim"
.LASF47:
	.string	"panic_timeout"
.LASF11:
	.string	"_Bool"
.LASF33:
	.string	"PG_mlocked"
.LASF39:
	.string	"PG_slob_free"
	.ident	"GCC: (UBERTC-4.9.x) 4.9.4"
	.section	.note.GNU-stack,"",%progbits
