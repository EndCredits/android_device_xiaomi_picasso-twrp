#
# Copyright (C) 2022 Team Win Recovery Project
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

DEVICE_PATH := device/xiaomi/picasso

PRODUCT_RELEASE_NAME := picasso

PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Crypto
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Fastbootd
PRODUCT_PACKAGES += \
	android.hardware.fastboot@1.0-impl-mock \
	android.hardware.fastboot@1.0-impl-mock.recovery \
	fastbootd

# Shipped API Version
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
	$(LOCAL_PATH)

# Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=$(PRODUCT_RELEASE_NAME) \
    TARGET_DEVICE=$(PRODUCT_RELEASE_NAME)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=$(PRODUCT_RELEASE_NAME) \
