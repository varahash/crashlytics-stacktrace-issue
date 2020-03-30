LOCAL_PATH := $(call my-dir)
JNI_SRC_PATH := $(LOCAL_PATH)/src/main/cpp

include $(CLEAR_VARS)

LOCAL_MODULE    := hello-jni
LOCAL_SRC_FILES := $(JNI_SRC_PATH)/hello-jni.c

# workaround for https://github.com/firebase/firebase-android-sdk/issues/1396
# so that *.cSYM will be generated based on 'elf' instead of 'dwarf'
LOCAL_CFLAGS += -g0

include $(BUILD_SHARED_LIBRARY)
