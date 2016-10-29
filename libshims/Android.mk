# Copyright (C) 2015 The CyanogenMod Project
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

include $(CLEAR_VARS)
LOCAL_SRC_FILES := MediaBuffer.c
LOCAL_SHARED_LIBRARIES := libstagefright_foundation
LOCAL_MODULE := libshims_ims
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
	camera/Camera.cpp \
	camera/CameraMetadata.cpp \
	camera/CaptureResult.cpp \
	camera/CameraParameters2.cpp \
	camera/ICamera.cpp \
	camera/ICameraClient.cpp \
	camera/ICameraService.cpp \
	camera/ICameraServiceListener.cpp \
	camera/ICameraServiceProxy.cpp \
	camera/ICameraRecordingProxy.cpp \
	camera/ICameraRecordingProxyListener.cpp \
	camera/camera2/ICameraDeviceUser.cpp \
	camera/camera2/ICameraDeviceCallbacks.cpp \
	camera/camera2/CaptureRequest.cpp \
	camera/camera2/OutputConfiguration.cpp \
	camera/CameraBase.cpp \
	camera/CameraUtils.cpp \
	camera/VendorTagDescriptor.cpp \
	camera/CameraParameters.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	liblog \
	libbinder \
	libhardware \
	libui \
	libgui \
	libcamera_metadata

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/camera/include \
	system/media/camera/include \
	system/media/private/camera/include

LOCAL_MODULE:= libshims_camera
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    boringssl/p_dec.c \
    boringssl/p_open.c \
    boringssl/cipher.c \
    boringssl/e_des.c \
    boringssl/cleanup.c

LOCAL_CFLAGS += -std=c99
LOCAL_C_INCLUDES := boringssl
LOCAL_SHARED_LIBRARIES := libcrypto
LOCAL_MODULE := libshim_boringssl
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)
