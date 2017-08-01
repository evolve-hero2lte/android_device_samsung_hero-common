LOCAL_PATH := $(call my-dir)

ifneq ($(filter herolte hero2lte, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
