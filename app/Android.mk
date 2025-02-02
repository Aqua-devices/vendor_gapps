# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

ifneq ($(filter taimen walleye,$(TARGET_PRODUCT)),)

include $(CLEAR_VARS)
LOCAL_MODULE := CalculatorGooglePrebuilt
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := CalculatorGooglePrebuilt/CalculatorGooglePrebuilt.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_OVERRIDES_PACKAGES := ExactCalculator
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := CalendarGooglePrebuilt
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := CalendarGooglePrebuilt/CalendarGooglePrebuilt.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_OVERRIDES_PACKAGES := Calendar
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := FaceLock
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := FaceLock/FaceLock.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCamera
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := GoogleCamera/GoogleCamera.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_OVERRIDES_PACKAGES := Camera2
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleContactsSyncAdapter
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleTTS
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := GoogleTTS/GoogleTTS.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := LatinIMEGooglePrebuilt
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := LatinIMEGooglePrebuilt/LatinIMEGooglePrebuilt.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_OVERRIDES_PACKAGES := LatinIME
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := NexusWallpapersStubPrebuilt
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := PrebuiltBugle
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := PrebuiltBugle/PrebuiltBugle.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_OVERRIDES_PACKAGES := Messaging \
                            messaging
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := PrebuiltDeskClockGoogle
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := PrebuiltDeskClockGoogle/PrebuiltDeskClockGoogle.apk
#LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_MODULE_CLASS := APPS
#LOCAL_OVERRIDES_PACKAGES := DeskClock
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := talkback
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := talkback/talkback.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := WallpapersBReel2017
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := WallpapersBReel2017/WallpapersBReel2017.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
$(LOCAL_BUILT_MODULE): TARGET := ../lib64/libgdx.so
$(LOCAL_BUILT_MODULE): SYMLINK := $(TARGET_OUT)/app/WallpapersBReel2017/lib/arm64/$(LOCAL_MODULE)
$(LOCAL_BUILT_MODULE):
	$(hide) echo "Symlink: $(SYMLINK) -> $(TARGET)"
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@
$(LOCAL_BUILT_MODULE2): TARGET := ../lib64/libwallpapers-breel-jni.so
$(LOCAL_BUILT_MODULE2): SYMLINK := $(TARGET_OUT)/app/WallpapersBReel2017/lib/arm64/$(LOCAL_MODULE)
$(LOCAL_BUILT_MODULE2):
	$(hide) echo "Symlink: $(SYMLINK) -> $(TARGET)"
	$(hide) mkdir -p $(dir $@)
	$(hide) mkdir -p $(dir $(SYMLINK))
	$(hide) rm -rf $@
	$(hide) rm -rf $(SYMLINK)
	$(hide) ln -sf $(TARGET) $(SYMLINK)
	$(hide) touch $@
LOCAL_POST_INSTALL_CMD := $(LOCAL_BUILT_MODULE) $(LOCAL_BUILT_MODULE2)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Ornament
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Ornament/Ornament.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleVrCore
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := GoogleVrCore/GoogleVrCore.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := WallpapersUsTwo
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := WallpapersUsTwo/WallpapersUsTwo.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCamera.apk.prof
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := FAKE
LOCAL_SRC_FILES := GoogleCamera/GoogleCamera.apk.prof
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): TARGET := $(LOCAL_SRC_FILES)
$(LOCAL_BUILT_MODULE): SYMLINK := $(TARGET_OUT)/app/GoogleCamera/$(LOCAL_MODULE)
$(LOCAL_BUILT_MODULE):
	$(hide) echo "Copy: $(TARGET) -> $(SYMLINK)"
	$(hide) cp $(TARGET) $(SYMLINK)

endif
