cmd_firmware/tsp_stm/hero_e.fw.gen.o :=  ../aarch64-uber-linux-android-6.3.1-20170616/bin/aarch64-linux-android-gcc -Wp,-MD,firmware/tsp_stm/.hero_e.fw.gen.o.d  -nostdinc -isystem /home/muhammed/Desktop/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/4.9.4/include -I./arch/arm64/include -Iarch/arm64/include/generated  -Iinclude -I./arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian  -D__ASSEMBLY__ -fno-PIE -Wa,-gdwarf-2         -c -o firmware/tsp_stm/hero_e.fw.gen.o firmware/tsp_stm/hero_e.fw.gen.S

source_firmware/tsp_stm/hero_e.fw.gen.o := firmware/tsp_stm/hero_e.fw.gen.S

deps_firmware/tsp_stm/hero_e.fw.gen.o := \

firmware/tsp_stm/hero_e.fw.gen.o: $(deps_firmware/tsp_stm/hero_e.fw.gen.o)

$(deps_firmware/tsp_stm/hero_e.fw.gen.o):
