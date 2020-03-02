#
# Copyright (C) 2011 The Android Open-Source Project
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/pantech/ef51/ef51-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef51/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Camera
#PRODUCT_PACKAGES += \
#    camera.msm8960

# Lights
PRODUCT_PACKAGES += \
	lights.msm8960

# Checking model
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/device_check.sh:system/bin/device_check.sh

# keylayout
PRODUCT_COPY_FILES += \
	device/pantech/ef51/keylayout/AVRCP.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/AVRCP.kl \
	device/pantech/ef51/keylayout/Generic.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/Generic.kl \
	device/pantech/ef51/keylayout/gpio-keys.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
	device/pantech/ef51/keylayout/qwerty.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/qwerty.kl \
	device/pantech/ef51/keylayout/apq8064-tabla-snd-card_Button_Jack.kl:$(TARGET_OUT_VENDOR)/usr/keylayout/apq8064-tabla-snd-card_Button_Jack.kl


# keychars
PRODUCT_COPY_FILES += \
	device/pantech/ef51/keychars/Generic.kcm:$(TARGET_OUT_VENDOR)/usr/keychars/Generic.kcm \
	device/pantech/ef51/keychars/qwerty2.kcm:$(TARGET_OUT_VENDOR)/usr/keychars/qwerty2.kcm \
	device/pantech/ef51/keychars/qwerty.kcm:$(TARGET_OUT_VENDOR)/usr/keychars/qwerty.kcm \
	device/pantech/ef51/keychars/Virtual.kcm:$(TARGET_OUT_VENDOR)/usr/keychars/Virtual.kcm

# idc
PRODUCT_COPY_FILES += \
	device/pantech/ef51/idc/qwerty2.idc:$(TARGET_OUT_VENDOR)/usr/idc/qwerty2.idc \
	device/pantech/ef51/idc/qwerty.idc:$(TARGET_OUT_VENDOR)/usr/idc/qwerty.idc \
    
PRODUCT_PACKAGES += \
    Torch

PRODUCT_COPY_FILES += \
	device/pantech/ef51/thermald/thermald.conf:$(TARGET_OUT_VENDOR)/vendor/etc/thermald.conf \
	device/pantech/ef51/thermald/thermal-engine-8064.conf:$(TARGET_OUT_VENDOR)/vendor/etc/thermal-engine-8064.conf

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=480

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Inherit from msm8974-common
$(call inherit-product, device/pantech/msm8960-common/msm8960.mk)
