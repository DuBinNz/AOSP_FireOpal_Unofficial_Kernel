#!/system/bin/sh
#
# Copyright (C) 2017 Michele Beccalossi <beccalossi.michele@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

BB=/system/xbin/busybox;

# mount root as rw to apply tweaks and settings
if [ "$($BB mount | grep rootfs | cut -c 26-27 | grep -c ro)" -eq "1" ]; then
	$BB mount -o remount,rw /;
fi;
if [ "$($BB mount | grep system | grep -c ro)" -eq "1" ]; then
	$BB mount -o remount,rw /system;
fi;

# cpu - little
chmod "644" /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo "338000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
chmod "444" /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

chmod "644" /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo "1586000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod "444" /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

echo "conservative" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# cpu - big
chmod "644" /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo "312000" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
chmod "444" /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq

chmod "644" /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo "2600000" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
chmod "444" /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq

echo "conservative" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor

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
echo "N" > /sys/module/sync/parameters/fsync_enabled

echo "1" > /proc/sys/vm/laptop_mode

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

# i/o scheduler
echo "90" > /proc/sys/kernel/sched_downmigrate
echo "95" > /proc/sys/kernel/sched_upmigrate
echo "400000" > /proc/sys/kernel/sched_freq_inc_notify
echo "400000" > /proc/sys/kernel/sched_freq_dec_notify
echo "3" > /proc/sys/kernel/sched_spill_nr_run
echo "100" > /proc/sys/kernel/sched_init_task_load

# network
sysctl -w net.ipv4.tcp_congestion_control=westwood

if [ "$($BB mount | grep rootfs | cut -c 26-27 | grep -c ro)" -eq "1" ]; then
	$BB mount -o remount,rw /;
fi;
if [ "$($BB mount | grep system | grep -c ro)" -eq "1" ]; then
	$BB mount -o remount,rw /system;
fi;
