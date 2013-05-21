# Copyright (C) 2009 The Android Open Source Project
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
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := rosbag
LOCAL_SRC_FILES := src/bag.cpp src/buffer.cpp src/chunked_file.cpp src/header.cpp src/time.cpp
LOCAL_SRC_FILES += src/duration.cpp src/stream.cpp src/uncompressed_stream.cpp src/bz2_stream.cpp
LOCAL_C_INCLUDES := include ../../ndk/sources/boost_1_47_0/
LOCAL_LDLIBS := lib/libboost_regex.a lib/libboost_thread.a lib/libXmlRpc.a lib/bzlib.a
LOCAL_CPP_FEATURES := rtti exceptions

include $(BUILD_SHARED_LIBRARY)
