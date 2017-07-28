#!/system/bin/sh


# Init by BABUSH
# UNOFFICAL FireOpalKernel



if [ -e /su/xbin/busybox ]; then
	BB=/su/xbin/busybox;
else if [ -e /sbin/busybox ]; then
	BB=/sbin/busybox;
else
	BB=/system/xbin/busybox;
fi;
fi;


MTWEAKS_PATH=/data/.mtweaks


# Mount
$BB mount -t rootfs -o remount,rw rootfs;
$BB mount -o remount,rw /system;
$BB mount -o remount,rw /data;
$BB mount -o remount,rw /;


# cpu - little
echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# cpu - big
echo "interactive" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor

# zram
swapoff "/dev/block/zram0/" > dev/null 2>&1
echo "1" > /sys/block/zram0/reset
echo "536870912" > sys/block/zram0/disksize
mkswap "/dev/block/zram0/" > dev/null 2>&1
swapon "/dev/block/zram0/" > dev/null 2>&1
echo "lz4" > /sys/block/zram0/comp_algorithm
echo "4" > /sys/block/zram0/max_comp_streams

# vm
echo "0" > /proc/sys/vm/page-cluster

# miscellaneous
# Enable FSYNC
	echo "N" > /sys/module/sync/parameters/fsync_enabled

# Set VM Preferences
  echo "0" > /proc/sys/vm/laptop_mode
	echo "1" > /proc/sys/vm/overcommit_memory

# storage - internal
echo "cfq" > /sys/block/sda/queue/scheduler
echo "128" > /sys/block/sda/queue/read_ahead_kb
echo "0" > /sys/block/sda/queue/rq_affinity
echo "0" > /sys/block/sda/queue/iostats

# storage - external
echo "cfq" > /sys/block/mmcblk0/queue/scheduler
echo "128" > /sys/block/mmcblk0/queue/read_ahead_kb
echo "0" > /sys/block/mmcblk0/queue/rq_affinity
echo "0" > /sys/block/mmcblk0/queue/iostats


# Set I/O Scheduler tweaks mmcblk0
	chmod 644 /sys/block/mmcblk0/queue/scheduler
	echo "maple" > /sys/block/mmcblk0/queue/scheduler
	echo "512" > /sys/block/mmcblk0/queue/read_ahead_kb
  chmod 644 /sys/block/mmcblk0/queue/iosched/writes_starved
	echo "4" > /sys/block/mmcblk0/queue/iosched/writes_starved
  chmod 644 /sys/block/mmcblk0/queue/iosched/fifo_batch
	echo "16" > /sys/block/mmcblk0/queue/iosched/fifo_batch
	echo "350" > /sys/block/mmcblk0/queue/iosched/sync_read_expire
	echo "550" > /sys/block/mmcblk0/queue/iosched/sync_write_expire
	echo "250" > /sys/block/mmcblk0/queue/iosched/async_read_expire
	echo "450" > /sys/block/mmcblk0/queue/iosched/async_write_expire
	echo "10" > /sys/block/mmcblk0/queue/iosched/sleep_latency_multiple

# Set I/O Scheduler tweaks sda
  chmod 644 /sys/block/sda/queue/scheduler
	echo "maple" > /sys/block/sda/queue/scheduler
	echo "256" > /sys/block/sda/queue/read_ahead_kb
        echo "5" > /sys/block/sda/bdi/min_ratio
        echo "2" > /sys/block/sda/queue/rq_affinity
	echo "0" > /sys/block/sda/queue/add_random
	echo "4" > /sys/block/sda/queue/iosched/writes_starved
	echo "16" > /sys/block/sda/queue/iosched/fifo_batch
	echo "350" > /sys/block/sda/queue/iosched/sync_read_expire
	echo "550" > /sys/block/sda/queue/iosched/sync_write_expire
	echo "250" > /sys/block/sda/queue/iosched/async_read_expire
	echo "450" > /sys/block/sda/queue/iosched/async_write_expire
	echo "10" > /sys/block/sda/queue/iosched/sleep_latency_multiple

# Set I/O Scheduler tweaks sdb
	chmod 644 /sys/block/sdb/queue/scheduler
  echo maple > /sys/block/sdb/queue/scheduler

# Set I/O Scheduler tweaks sdc
	chmod 644 /sys/block/sdc/queue/scheduler
	echo "maple" > /sys/block/sdc/queue/scheduler

# Set I/O Scheduler tweaks sdd
	chmod 644 /sys/block/sdd/queue/scheduler
	echo "maple" > /sys/block/sdd/queue/scheduler

# network
sysctl -w net.ipv4.tcp_congestion_control=westwood


# CPU freq. values
echo 2288000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq;
echo 416000 > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq;
echo 1586000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq;
echo 130000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq;

#-------------------------
# MTWEAKS
#-------------------------

	# Make internal storage directory.
    if [ ! -d $MTWEAKS_PATH ]; then
	    $BB mkdir $MTWEAKS_PATH;
    fi;
	
	$BB chmod 0777 $MTWEAKS_PATH;
	$BB chown 0.0 $MTWEAKS_PATH;

	# Delete backup directory
	$BB rm -rf $MTWEAKS_PATH/bk;

    # Make backup directory.
	$BB mkdir $MTWEAKS_PATH/bk;
	$BB chmod 0777 $MTWEAKS_PATH/bk;
	$BB chown 0.0 $MTWEAKS_PATH/bk;

	# Save original voltages
	$BB cat /sys/devices/system/cpu/cpufreq/mp-cpufreq/cluster1_volt_table > $MTWEAKS_PATH/bk/cpuCl1_stock_voltage
	$BB cat /sys/devices/system/cpu/cpufreq/mp-cpufreq/cluster0_volt_table > $MTWEAKS_PATH/bk/cpuCl0_stock_voltage
	$BB cat /sys/devices/14ac0000.mali/volt_table > $MTWEAKS_PATH/bk/gpu_stock_voltage
	$BB chmod -R 755 $MTWEAKS_PATH/bk/*;


#-------------------------
# APPLY PERMISSIONS
#-------------------------

	# sqlite3
	$BB chown 0.0 /system/xbin/sqlite3;
	$BB chmod 755 /system/xbin/sqlite3;

	# Fix SafetyNet by Repulsa
	$BB chmod 640 /sys/fs/selinux/enforce

#-------------------------



# Unmount
$BB mount -t rootfs -o remount,rw rootfs;
$BB mount -o remount,ro /system;
$BB mount -o remount,rw /data;
$BB mount -o remount,ro /;

