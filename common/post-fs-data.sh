#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# Enable Hi_performance mode of your wcd9xx DAC
su
busybox echo "1" > /sys/module/snd_soc_wcd9*/parameters/high_perf_mode
