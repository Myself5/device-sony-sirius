# Copyright 2014 The Android Open Source Project
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

# Kernel
TARGET_KERNEL_SOURCE := kernel/sony/msm

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 960x640

# Inherit AOSP Shinano common device parts
$(call inherit-product, device/sony/sirius/aosp_d6503.mk)

# Inherit Omni Shinano common device parts
$(call inherit-product, device/sony/shinano-common/device_omni.mk)

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit Omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/sirius/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device

# Override Product Name for OmniROM
PRODUCT_NAME := omni_sirius
PRODUCT_MODEL := Xperia Z2
