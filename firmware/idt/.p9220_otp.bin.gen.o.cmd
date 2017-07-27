cmd_firmware/idt/p9220_otp.bin.gen.o :=  ../aarch64-uber-linux-android-6.3.1-20170616/bin/aarch64-linux-android-gcc -Wp,-MD,firmware/idt/.p9220_otp.bin.gen.o.d  -nostdinc -isystem /home/muhammed/Desktop/aarch64-uber-linux-android-6.3.1-20170616/bin/../lib/gcc/aarch64-linux-android/4.9.4/include -I./arch/arm64/include -Iarch/arm64/include/generated  -Iinclude -I./arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian  -D__ASSEMBLY__ -fno-PIE -Wa,-gdwarf-2         -c -o firmware/idt/p9220_otp.bin.gen.o firmware/idt/p9220_otp.bin.gen.S

source_firmware/idt/p9220_otp.bin.gen.o := firmware/idt/p9220_otp.bin.gen.S

deps_firmware/idt/p9220_otp.bin.gen.o := \

firmware/idt/p9220_otp.bin.gen.o: $(deps_firmware/idt/p9220_otp.bin.gen.o)

$(deps_firmware/idt/p9220_otp.bin.gen.o):
