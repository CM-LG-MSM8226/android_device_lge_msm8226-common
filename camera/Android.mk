LOCAL_PATH := $(call my-dir)

ifneq ($(filter w3ds w5 w55ds w7 g2m jag3gds jagnm,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)

LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_SRC_FILES := CameraWrapper.cpp

LOCAL_C_INCLUDES := \
	    system/media/camera/include

LOCAL_SHARED_LIBRARIES := \
	    libhardware liblog libcamera_client libutils libcutils libdl

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_CFLAGS := -Werror
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := CameraParameters.cpp
LOCAL_MODULE := libcamera_parameters_shim
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)

endif
