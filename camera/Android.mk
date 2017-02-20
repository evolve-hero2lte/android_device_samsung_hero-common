ifeq ($(TARGET_PROVIDES_CAMERA_HAL),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := camera.exynos5
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif