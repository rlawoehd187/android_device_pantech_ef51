# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common BlurOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef51/full_ef51.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef51
PRODUCT_NAME := lineage_ef51
PRODUCT_BRAND := Vega
PRODUCT_MODEL := Vega No.6
PRODUCT_MANUFACTURER := Vega

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRODUCT_NAME="Vega Iron" \
#    TARGET_DEVICE=ef52 \


# Enable Torch
#PRODUCT_PACKAGES += Torch

