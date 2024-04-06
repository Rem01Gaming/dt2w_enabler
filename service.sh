#!/system/bin/sh
while [ -z "$(getprop sys.boot_completed)" ]; do
	sleep 40
done

write() {
	[ -f $1 ] && echo $2 >$1
}

write "/sys/touchpanel/double_tap" "1"
write "/sys/class/sec/tsp/dt2w_enable" "1"
write "/proc/touchpanel/double_tap_enable" "1"
write "/proc/tp_gesture" "1"
write "/sys/android_touch/doubletap2wake" "1"
write "/sys/android_touch/doubletap_wake" "1"
