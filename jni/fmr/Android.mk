# Copyright (C) 2014 The Android Open Source Project
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

LOCAL_SRC_FILES := \
    fmr_core.cpp \
    fmr_err.cpp \
    libfm_jni.cpp \
    common.cpp \
    custom.cpp

LOCAL_C_INCLUDES := \
    frameworks/base/include/media

LOCAL_HEADER_LIBRARIES := \
    jni_headers

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libdl \
    libmedia \
    liblog

LOCAL_CFLAGS += -Wno-error=unused-but-set-variable \
	-Wno-error=unused-parameter \
	-Wno-error=unused-function

LOCAL_MODULE := libmtkfmjni
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
