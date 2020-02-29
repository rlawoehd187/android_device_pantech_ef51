
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Slim stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef51/full_ef51.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef51
PRODUCT_NAME := lineage_ef51
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega No.6
PRODUCT_MANUFACTURER := Pantech

TARGET_DEVICE := ef51


