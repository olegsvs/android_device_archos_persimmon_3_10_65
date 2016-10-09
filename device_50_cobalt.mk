$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, vendor/archos/50_cobalt/50_cobalt-vendor-blobs.mk)

PRODUCT_LOCALES := ru_RU en_US uk_UA
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
DEVICE_PACKAGE_OVERLAYS += device/archos/50_cobalt/overlay
TARGET_OTA_ASSERT_DEVICE := ac50co,50_cobalt,Archos 50 Cobalt,archos
CM_BUILDTYPE :=NIGHTLY

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/archos/50_cobalt/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

#Xlog 
PRODUCT_PACKAGES += \
    libxlog

# Network dependency
PRODUCT_PACKAGES += \
    	libifaddrs	

# init.rc's
PRODUCT_COPY_FILES += \
	device/archos/50_cobalt/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/archos/50_cobalt/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/archos/50_cobalt/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/archos/50_cobalt/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/archos/50_cobalt/rootdir/init.project.rc:root/init.project.rc \
	device/archos/50_cobalt/rootdir/factory_init.rc:root/factory_init.rc \
	device/archos/50_cobalt/rootdir/factory_init.project.rc:root/factory_init.project.rc \
	device/archos/50_cobalt/rootdir/init.ssd.rc:root/init.ssd.rc \
	device/archos/50_cobalt/rootdir/init.trace.rc:root/init.trace.rc \
	device/archos/50_cobalt/rootdir/init.modem.rc:root/init.modem.rc \
    device/archos/50_cobalt/rootdir/fstab.mt6735:root/fstab.mt6735  \
	device/archos/50_cobalt/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
	device/archos/50_cobalt/rootdir/meta_init.rc:root/meta_init.rc \
	device/archos/50_cobalt/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	device/archos/50_cobalt/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	device/archos/50_cobalt/rootdir/meta_init.modem.rc:root/factory_init.rc \
	device/archos/50_cobalt/rootdir/meta_init.modem.rc:root/factory_init.project.rc \
	device/archos/50_cobalt/rootdir/init.rc:root/init.rc
	
# hardware specifics
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
    
# CM's Snap camera
#PRODUCT_PACKAGES += \
#	Snap

# Torch
PRODUCT_PACKAGES += \
    Torch
    	
# MTK's Engineer Mode
PRODUCT_PACKAGES += \
    EngineerMode
	
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Gralloc
PRODUCT_PACKAGES += \
   	libgralloc_extra
   	
# Bluetooth
PRODUCT_PACKAGES += \
	libbt-vendor

# Audio
PRODUCT_PACKAGES += \
    	audio.a2dp.default \
    	audio_policy.default \
    	audio_policy.stub \
    	audio.r_submix.default \
    	audio.usb.default \
    	libaudio-resampler \
    	tinymix \
    	libtinyalsa \
    	libtinycompress
    	
# Audio profiles used to address the correct audio devices for headset, etc.
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    	$(LOCAL_PATH)/configs/audio_device.xml:system/etc/audio_device.xml \
    	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    	$(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf

# Wifi
PRODUCT_PACKAGES += \
    	lib_driver_cmd_mt66xx \
    	libwifi-hal-mt66xx \
    	wifi_hal \
    	libwpa_client \
    	hostapd \
    	hostapd_cli \
    	dhcpcd.conf \
    	wpa_supplicant \
    	wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libnl_2 \
    libtinyxml
    
# Live Display
PRODUCT_PACKAGES += \
	libjni_livedisplay
    	
# Telecom
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml \
    	$(LOCAL_PATH)/configs/ecc_list.xml:system/etc/ecc_list.xml \
    	$(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml 

# GPS
PRODUCT_COPY_FILES += \
    device/archos/50_cobalt/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml
    
# FM Radio
PRODUCT_PACKAGES += \
     	FmRadio \
     	libfmjni \
	libfmmt6620 \
        libfmmt6628 \
        libfmmt6627 \
        libfmmt6630 \
        libfmcust 
    
# Media	
PRODUCT_COPY_FILES += \
    	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml
    	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    device/archos/50_cobalt/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/archos/50_cobalt/configs/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
	
# Thermal
PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    	$(LOCAL_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    	$(LOCAL_PATH)/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    	$(LOCAL_PATH)/configs/thermal/.thermal_policy_00:system/etc/.tp/.thermal_policy_00
	
# Set default player to AwesomePlayer
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.media.use-awesome=true
	
# limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    	dalvik.vm.boot-dex2oat-threads=4 \
    	dalvik.vm.dex2oat-threads=2 \
    	dalvik.vm.image-dex2oat-threads=4

$(call inherit-product, build/target/product/full.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	persist.service.acm.enable=0 \
	ro.oem_unlock_supported=1 \
	persist.sys.usb.config=mtp,adb \
	qemu.hw.mainkeys=0
