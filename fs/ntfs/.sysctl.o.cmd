cmd_fs/ntfs/sysctl.o :=  ../aarch64-uber-linux-android-6.3.1-20170616/bin/aarch64-linux-android-gcc -Wp,-MD,fs/ntfs/.sysctl.o.d  -nostdinc -isystem /media/muhammed/926acc40-21ea-4312-b2b5-f7c27359cb20/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/6.3.1/include -I./arch/arm64/include -Iarch/arm64/include/generated  -Iinclude -I./arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -Ofast -g0 -DNDEBUG -fgraphite -fgraphite-identity -fivopts -floop-block -floop-interchange -floop-strip-mine -fmodulo-sched -fmodulo-sched-allow-regmoves -fomit-frame-pointer -ftree-loop-distribution -ftree-loop-linear -mlow-precision-recip-sqrt -mpc-relative-literal-loads -mcpu=cortex-a57.cortex-a53 -mtune=cortex-a57.cortex-a53 -mgeneral-regs-only -mpc-relative-literal-loads -fno-pic -fno-delete-null-pointer-checks -Wno-frame-address -fno-PIE -Ofast --param=allow-store-data-races=0 -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -DNTFS_VERSION=\"2.1.31\" -DNTFS_RW    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(sysctl)"  -D"KBUILD_MODNAME=KBUILD_STR(ntfs)" -c -o fs/ntfs/sysctl.o fs/ntfs/sysctl.c

source_fs/ntfs/sysctl.o := fs/ntfs/sysctl.c

deps_fs/ntfs/sysctl.o := \
    $(wildcard include/config/sysctl.h) \

fs/ntfs/sysctl.o: $(deps_fs/ntfs/sysctl.o)

$(deps_fs/ntfs/sysctl.o):
