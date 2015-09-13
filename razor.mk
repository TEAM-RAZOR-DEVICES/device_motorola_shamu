## Specify phone tech before including full_phone
$(call inherit-product, vendor/razor/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := shamu

# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560

# Inherit some common Slim stuff.
$(call inherit-product, vendor/razor/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/razor/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/shamu/aosp_shamu.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shamu
PRODUCT_NAME := razor_shamu
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1/LMY47I/1767468:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47I 1767468 release-keys"
