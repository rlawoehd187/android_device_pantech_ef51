#
# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017-2018 The LineageOS Projec
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef51/full_ef51.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef51
PRODUCT_NAME := lineage_ef51
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega No.6
PRODUCT_MANUFACTURER := Pantech

TARGET_VENDOR := Pantech
TARGET_VENDOR_PRODUCT_NAME := ef51
TARGET_VENDOR_DEVICE_NAME := ef51

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8960-user 4.4.2 KOT49H IM-A860S.103 release-keys" 

BUILD_FINGERPRINT := VEGA/VEGA_IM-A860S/ef51s:4.4.2/KOT49H/IM-A860S.103:user/release-keys
