#!/sbin/sh

if grep -q "IM-A860S" /dev/block/mmcblk0p12 ; then
	mv /system/vendor/etc/firmware_ef51s/* /system/vendor/firmware/

elif grep -q "IM-A860K" /dev/block/mmcblk0p12 ; then
	mv /system/vendor/etc/firmware_ef51k/* /system/vendor/firmware/

elif grep -q "IM-A860L" /dev/block/mmcblk0p12 ; then
	mv /system/vendor/etc/firmware_ef51l/* /system/vendor/firmware/
fi

rm -rf /system/vendor/etc/firmware_ef51s
rm -rf /system/vendor/etc/firmware_ef51k
rm -rf /system/vendor/etc/firmware_ef51l
rm -rf /system/vendor/bin/device_check.sh

