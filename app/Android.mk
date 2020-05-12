LOCAL_PATH := $(call my-dir)
JNI_SRC_PATH := $(LOCAL_PATH)/src/main/cpp

include $(CLEAR_VARS)

LOCAL_MODULE    := hello-jni
LOCAL_SRC_FILES := $(JNI_SRC_PATH)/hello-jni.c

include $(BUILD_SHARED_LIBRARY)
