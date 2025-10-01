LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := peka
LOCAL_FORCE_STATIC_EXECUTABLE := true
# LOCAL_STATIC_LIBRARIES := sqlite3 libcutils libc
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := \
	./src/pts.c \
	./src/daemon.c \
	./src/su.c  \
	./src/mylog.c
include $(BUILD_EXECUTABLE)
