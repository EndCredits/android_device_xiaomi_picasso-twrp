#
# Copyright (C) 2022 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := picasso
DEVICE_PATH := device/xiaomi/picasso

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := picasso
PRODUCT_NAME := twrp_picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := Redmi K30 5G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Redmi/picasso/picasso:11/RKQ1.200826.002/V12.5.9.0.RGICNXM:user/release-keys" \
    PRIVATE_BUILD_DESC="picasso-user 11 RKQ1.200826.002 V12.5.9.0.RGICNXM release-keys"