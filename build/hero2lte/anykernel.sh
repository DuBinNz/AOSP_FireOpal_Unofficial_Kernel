# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=Fire Opal UNOFFICIAL by BABUSH
kernel.version=3.3.0
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=hero2lte
device.name2=hero2ltexx
device.name3=hero2ltebmc
} # end properties

# shell variables
block=/dev/block/platform/155a0000.ufs/by-name/BOOT;
is_slot_device=0;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel permissions
# set permissions for included ramdisk files
chmod 640 $ramdisk/fstab.samsungexynos8890
chmod 750 $ramdisk/init.services.rc
chmod 750 $ramdisk/sbin/kernelinit.sh
chmod 750 $ramdisk/sbin/resetprop
chmod 750 $ramdisk/sbin/sysinit.sh
chmod 750 $ramdisk/sbin/wakelocks.sh
chmod 750 $ramdisk/sbin/spec.sh

## AnyKernel install
dump_boot;

# begin ramdisk changes

# default.prop
echo "Configuring device.."
remove_line default.prop "persist.sys.usb.config=none";
insert_line default.prop "persist.sys.usb.config=mtp,adb" after "ro.debuggable=1" "persist.sys.usb.config=mtp,adb";
remove_line default.prop "ro.adb.secure=1";
insert_line default.prop "ro.adb.secure=1" after "security.perf_harden=1" "ro.adb.secure=1";
replace_line default.prop "ro.secure=1" "ro.secure=0";

insert_line default.prop "ro.sys.fw.bg_apps_limit=60" after "debug.atrace.tags.enableflags=0" "#\n# CUSTOM_KERNEL_TWEAKS\n#\nro.sys.fw.bg_apps_limit=60";

# init.rc
insert_line init.rc "import /init.services.rc" before "import /init.environ.rc" "import /init.services.rc";

# init.samsungexynos8890.rc
insert_line init.samsungexynos8890.rc "chown system system /sys/devices/14ac0000.mali/max_clock" before "chown radio system /sys/devices/system/sec_os_ctrl/migrate_os" "    chown system system /sys/devices/14ac0000.mali/max_clock\n    chmod 0660 /sys/devices/14ac0000.mali/max_clock\n    chown system system /sys/devices/14ac0000.mali/min_clock\n    chmod 0660 /sys/devices/14ac0000.mali/min_clock\n";
insert_line init.samsungexynos8890.rc "chown system system /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq" before "chown system system sys/devices/system/cpu/cpufreq/mp-cpufreq/cluster0_max_freq" "    # Assume HMP uses shared cpufreq policy for all BIG CPUs\n    chown system system /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq\n    chmod 0660 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq\n";

# end ramdisk changes

echo "Successfully configured.."
echo "Couple of things.."
write_boot;
echo "Done!"

## end install
