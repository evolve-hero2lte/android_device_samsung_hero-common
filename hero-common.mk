LOCAL_PATH := device/samsung/hero-common

# Common Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/hero-common/overlay

# Flat device tree for boot image
PRODUCT_PACKAGES += \
	dtbhtoolExynos

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.samsungexynos8890 \
	init.samsung.rc \
	init.power.rc \
	init.samsungexynos8890.rc \
	ueventd.samsungexynos8890.rc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
	frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
	frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# Graphics
PRODUCT_AAPT_CONFIG := xlarge large
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Power
PRODUCT_PACKAGES += \
    power.universal8890

# Lights
PRODUCT_PACKAGES += \
    lights.universal8890

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images

# mobicore
PRODUCT_PACKAGES += \
    keystore.exynos5

# Packages
PRODUCT_PACKAGES += \
    AdvancedDisplay \
    libsamsung_symbols \
    SamsungServiceMode \
    Torch \
    SamsungDoze \
    FlipFlap

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/configs/audio/mixer_gains.xml:system/etc/mixer_gains.xml \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal8890 \
    libtinycompress

# Init Resources
PRODUCT_PACKAGES += \
	init.bluetooth.rc

# Packages
PRODUCT_PACKAGES += \
	camera.exynos5 \
	Snap

# Packages
PRODUCT_PACKAGES += \
	fingerprintd \
	fingerprint.exynos5

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
        $(LOCAL_PATH)/configs/gps/lhd.conf:system/etc/lhd.conf \
	$(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

# Init Resources
PRODUCT_PACKAGES += \
	init.gps.rc

# Packages
PRODUCT_PACKAGES += \
	libion_exynos \
	libfimg
#	libion
#	gralloc.exynos5



# Properties - HWC - not used on cm/aosp
PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwc.winupdate=1 \
	debug.hwc.otf=1

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
	$(LOCAL_PATH)/configs/idc/ft5x06_ts.idc:system/usr/idc/ft5x06_ts.idc \
	$(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(LOCAL_PATH)/configs/idc/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
	$(LOCAL_PATH)/configs/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# Packages
PRODUCT_PACKAGES += \
	ebtables \
	ethertypes \
	libebtc

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
	$(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
	$(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

# Packages
PRODUCT_PACKAGES += \
	com.android.nfc_extras \
	NfcNci \
	Tag

# Init Resources
PRODUCT_PACKAGES += \
	init.baseband.rc \
	init.baseband.sh \
	init.rilchip.rc \
	init.rilcommon.rc

# Packages
PRODUCT_PACKAGES += \
	libxml2 \
	libprotobuf-cpp-full \
	libsecril-client

# Init Resources
PRODUCT_PACKAGES += \
	init.samsungexynos8890.usb.rc

# Packages
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Properties
# Default.prop overrides to get adb working at boot
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	persist.adb.notify=0 \
	ro.adb.secure=0 \
	ro.hardware=universal8890 \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.usb.config=mtp,adb \
	ro.securestorage.support=false

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Init Resources
PRODUCT_PACKAGES += \
	init.wifi.rc

# Packages
PRODUCT_PACKAGES += \
	macloader \
	wifiloader \
	hostapd \
	libwpa_client \
	wpa_supplicant \
	wpa_supplicant.conf

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos8890/exynos8890.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/hero-common/hero-common-vendor.mk)
