# Recovery
BOARD_RECOVERY_SWIPE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/15400000.usb/15400000.dwc3/gadget/lun%d/file"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB := device/samsung/hero-common/ramdisk/fstab.samsungexynos8890
