LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS += -DHAVE_LIBUSB -DMXT_VERSION=\"$(GIT_VERSION)\"
LOCAL_C_INCLUDES := $(SRC_PATH)
LOCAL_SRC_FILES := \
  mxt_app.c \
  menu.c \
  bootloader.c \
  diagnostic_data.c \
  touch_app.c \
  self_test.c \
  bridge.c \
  buffer.c \
  gr.c \
  serial_data.c \
  self_cap.c \
  signal.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_STATIC_LIBRARIES := maxtouch libusbdroid
LOCAL_MODULE := mxt-app

include $(BUILD_EXECUTABLE)
