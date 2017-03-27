#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# Enable Hi_performance mode of your wcd9xx DAC
su
chmod 0777 $MODDir/post-fs-data.sh
busbox sleep 7
busybox echo "1" > /sys/module/snd_soc_wcd93*/parameters/high_perf_mode
busybox echo "1" > /sys/module/snd_soc_wcd92*/parameters/high_perf_mode
