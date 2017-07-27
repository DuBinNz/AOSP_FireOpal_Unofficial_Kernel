cmd_arch/arm64/boot/Image := ../aarch64-uber-linux-android-6.3.1-20170616/bin/aarch64-linux-android-objcopy -O binary -R .note -R .note.gnu.build-id -R .comment -S  vmlinux arch/arm64/boot/Image
