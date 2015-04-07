#!/system/bin/sh

#Set governor items
#echo 378000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq;
echo 1512000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq;
echo 1512000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq;
echo 1 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_booted;

DISLIT=0
[ "`/system/xbin/busybox grep -i 1 /data/.disable_touchlight`" ] && DISLIT=1
if [ "$DISLIT" == 1 ];
then
echo 0 > /sys/class/leds/button-backlight/max_brightness;
echo 0 > /sys/class/leds/button-backlight/brightness;
fi;
echo 1 > /proc/sys/net/ipv4/tcp_tw_recycle;
echo 1 > /proc/sys/net/ipv4/tcp_tw_reuse;

# General Tweaks, thanks to Osmosis and Malaroths for most of this
echo 512 > /sys/block/mmcblk0/queue/nr_requests;
echo 256 > /sys/block/mmcblk0/queue/read_ahead_kb;
echo 2 > /sys/block/mmcblk0/queue/rq_affinity;
echo 0 > /sys/block/mmcblk0/queue/nomerges;
echo 0 > /sys/block/mmcblk0/queue/rotational;
echo 0 > /sys/block/mmcblk0/queue/add_random;
echo 0 > /sys/block/mmcblk0/queue/iostats;
echo 8192 > /proc/sys/vm/min_free_kbytes

# Cache Tweaks, thanks to brees75 for this stuff
echo 2048 > /sys/devices/virtual/bdi/0:18/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/0:19/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/1:0/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:1/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:2/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:3/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:4/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:5/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:6/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:7/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:8/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:9/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:10/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:11/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:12/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:13/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:14/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/1:15/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/7:0/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:1/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:2/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:3/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:4/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:5/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:6/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:7/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:8/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:9/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:10/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:11/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:12/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:13/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:14/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:15/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:16/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:17/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:18/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:19/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:20/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:21/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:22/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:23/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:24/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:25/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:26/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:27/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:28/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:29/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:30/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:31/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:32/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:33/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:34/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:35/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:36/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:37/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/7:38/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/179:0/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/179:8/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/179:16/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/253:0/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/254:0/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:1/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:2/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:3/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:4/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:5/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:6/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:7/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:8/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:9/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:10/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:11/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:12/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:13/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:14/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:15/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:16/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:17/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:18/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:19/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:20/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:21/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:22/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:23/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:24/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:25/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:26/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:27/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:28/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:29/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:30/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:31/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:32/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:33/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:34/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:35/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:36/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:37/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/254:38/read_ahead_kb
echo 256 > /sys/devices/virtual/bdi/default/read_ahead_kb

echo $(date) END of post-init.sh
