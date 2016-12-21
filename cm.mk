## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := 50 Cobalt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/archos/persimmon/device_persimmon.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := persimmon
PRODUCT_NAME := cm_persimmon
PRODUCT_BRAND := Archos
PRODUCT_MODEL := Archos 50 Cobalt
PRODUCT_MANUFACTURER := Archos

PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Moscow
