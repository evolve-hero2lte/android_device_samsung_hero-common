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
	ueventd.samsungexynos8890.rc \

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

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
    libsamsung_symbols \
    SamsungServiceMode \
    Torch \
    SamsungDoze \
    FlipFlap

# Inherit board specific products
-include $(LOCAL_PATH)/product/*.mk

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos8890/exynos8890.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/hero-common/hero-common-vendor.mk)
