#!/sbin/sh

if grep -q "IM-A860S" /dev/block/mmcblk0p12 ; then
	mv /system/etc/firmware_ef51s/* /system/etc/firmware/

elif grep -q "IM-A860K" /dev/block/mmcblk0p12 ; then
	mv /system/etc/firmware_ef51k/* /system/etc/firmware/

elif grep -q "IM-A860L" /dev/block/mmcblk0p12 ; then
	mv /system/etc/firmware_ef51l/* /system/etc/firmware/
fi

rm -rf /system/etc/firmware_ef51s
rm -rf /system/etc/firmware_ef51k
rm -rf /system/etc/firmware_ef51l
rm -rf /system/bin/device_check.sh

