cmd_arch/arm64/kernel/kuser32.o :=  ../aarch64-uber-linux-android-6.3.1-20170616/bin/aarch64-linux-android-gcc -Wp,-MD,arch/arm64/kernel/.kuser32.o.d  -nostdinc -isystem /mnt/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/6.3.1/include -I./arch/arm64/include -Iarch/arm64/include/generated  -Iinclude -I./arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian  -D__ASSEMBLY__ -fno-PIE -Wa,-gdwarf-2         -c -o arch/arm64/kernel/kuser32.o arch/arm64/kernel/kuser32.S

source_arch/arm64/kernel/kuser32.o := arch/arm64/kernel/kuser32.S

deps_arch/arm64/kernel/kuser32.o := \
  arch/arm64/include/asm/unistd.h \
    $(wildcard include/config/compat.h) \
  arch/arm64/include/uapi/asm/unistd.h \
  include/asm-generic/unistd.h \
  include/uapi/asm-generic/unistd.h \
    $(wildcard include/config/mmu.h) \
  arch/arm64/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  include/uapi/asm-generic/bitsperlong.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \

arch/arm64/kernel/kuser32.o: $(deps_arch/arm64/kernel/kuser32.o)

$(deps_arch/arm64/kernel/kuser32.o):
