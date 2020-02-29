# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

-include device/pantech/msm8960-common/BoardConfigCommon.mk

# ReleaseTools
TARGET_RELEASETOOLS_EXTENSIONS := device/pantech/ef52/releasetools

# inherit from the proprietary version
-include vendor/pantech/ef51/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := kernel/pantech/msm8960
TARGET_KERNEL_CONFIG := LineageOS_ef51_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1782579200 #1.7GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27577531392 #25.7GB
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := ef51l,ef51s,ef51k,ef51

TARGET_BOOTANIMATION_HALF_RES := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef51/bluetooth

#TWRP screen config
DEVICE_RESOLUTION := 1080x1920
