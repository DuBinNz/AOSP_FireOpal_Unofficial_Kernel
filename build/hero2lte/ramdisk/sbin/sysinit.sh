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

mount -o remount,rw /;
mount -o rw,remount /system

# alter system properties
/sbin/resetprop -n ro.boot.warranty_bit "0"
/sbin/resetprop -n ro.warranty_bit "0"
/sbin/resetprop -n sec.fle.encryption.status "encrypted"
/sbin/resetprop -n ro.crypto.state "encrypted"
/sbin/resetprop -n ro.boot.veritymode "enforcing"
/sbin/resetprop -n ro.boot.verifiedbootstate "green"
/sbin/resetprop -n ro.boot.flash.locked "1"
/sbin/resetprop -n ro.boot.ddrinfo "00000001"
/sbin/resetprop -n ro.fmp_config "1"
/sbin/resetprop -n ro.boot.fmp_config "1"
/sbin/resetprop -n sys.oem_unlock_allowed "0"

# init.d support
if [ ! -e /system/etc/init.d ]; then
	mkdir /system/etc/init.d
	chown -R root.root /system/etc/init.d
	chmod -R 755 /system/etc/init.d
fi

# start init.d
for FILE in /system/etc/init.d/*; do
	sh $FILE >/dev/null
done;

# cleaner
for dir in `find /data/data -type d -iname "*cache*"`; do
    rm -f $dir/*
done

rm -f /data/anr/*.*
rm -f /data/data/*/*/*/*.tmp
rm -f /data/data/*/*/*/*/*.tmp
rm -f /data/mlog/*
rm -rf /data/log/*
rm -f /data/log/*.*
rm -f /data/slog/*
rm -f /data/cache/*.*
rm -f /data/last_log/*.*
rm -f /data/system/dropbox/*.*
rm -f /data/backup/pending/*
rm -f /data/tombstones/*
rm -f /data/system/usagestats/0/daily/*
rm -f /data/system/usagestats/0/monthly/*
rm -f /data/system/usagestats/0/weekly/*
rm -f /data/system/usagestats/0/yearly/*

# sqlite
for i in `busybox find /data/* -iname "*.db"`; do
    sqlite3 $i 'VACUUM;';
    resVac=$?
    if [ $resVac == 0 ]; then
        resVac="SUCCESS";
    else
        resVac="ERRCODE-$resVac";
    fi;

    sqlite3 $i 'REINDEX;';
    resIndex=$?
    if [ $resIndex == 0 ]; then
        resIndex="SUCCESS";
    else
        resIndex="ERRCODE-$resIndex";
    fi;
done

# fstrim
fstrim -v /data
fstrim -v /system
fstrim -v /cache

# mediaserver
sepolicy-inject --live -s mediaserver -t mediaserver_tmpfs -c file -p read,write,execute
sepolicy-inject --live -s audioserver -t audioserver_tmpfs -c file -p read,write,execute

supolicy --live "allow mediaserver mediaserver_tmpfs:file { read write execute };"
supolicy --live "allow audioserver audioserver_tmpfs:file { read write execute };"

# mediakill
killall -9 android.process.media
killall -9 mediaserver
