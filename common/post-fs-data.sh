#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# Enable Hi_performance mode of your wcd9xx DAC
su
DIR=$(find /sys/module -name high_perf_mode)
chmod 0777 $MODDIR/post-fs-data.sh
busybox echo "1" > $DIR
