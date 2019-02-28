LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := init.yukon.pwr
LOCAL_SRC_FILES := init.yukon.pwr.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.yukon.pwr
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.$(TARGET_DEVICE)
LOCAL_SRC_FILES := init.recovery.yukon.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.recovery.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.$(TARGET_DEVICE)
LOCAL_SRC_FILES := ueventd.yukon.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := ueventd.$(TARGET_DEVICE)
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
gps_conf_dir := $(LOCAL_PATH)/system/etc
gps_debug_conf := gps_debug.conf
gps_conf := gps.conf
$(gps_conf_dir)/$(gps_debug_conf):
	ln -sf $(gps_conf) $(TARGET_OUT_ETC)/$(gps_debug_conf)
ALL_DEFAULT_INSTALLED_MODULES += $(gps_conf_dir)/$(gps_debug_conf)
