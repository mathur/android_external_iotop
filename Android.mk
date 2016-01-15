LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/main.c  src/ioprio.c  src/utils.c  src/views.c  src/xxxid_info.c

LOCAL_C_INCLUDES := src

LOCAL_CFLAGS := -O2 -Wall -DUNIX -D__BIONIC__ -D_LARGEFILE64_SOURCE \
                -D_FILE_OFFSET_BITS=64

LOCAL_ARM_MODE := arm

LOCAL_MODULE := iotop
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)