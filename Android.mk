LOCAL_PATH := $(call my-dir)

SRC_PATH := $(LOCAL_PATH)/src

GIT_VERSION = `sh -c 'build-aux/version.sh'`

subdirs := $(addprefix $(SRC_PATH)/,$(addsuffix /Android.mk, \
    libmaxtouch \
    jni \
    mxt-app \
    libusbdroid \
  ))

include $(subdirs)
