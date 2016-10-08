# Release name
PRODUCT_RELEASE_NAME := cobalt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/archos/cobalt/device_cobalt.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)


TARGET_SCREEN_HEIGHT := 1280	
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cobalt
PRODUCT_NAME := cm_cobalt
PRODUCT_BRAND := aarchosrk
PRODUCT_MODEL := cobalt
PRODUCT_MANUFACTURER := archos

PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Moscow
