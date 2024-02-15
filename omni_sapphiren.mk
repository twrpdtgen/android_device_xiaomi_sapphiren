#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sapphiren device
$(call inherit-product, device/xiaomi/sapphiren/device.mk)

PRODUCT_DEVICE := sapphiren
PRODUCT_NAME := omni_sapphiren
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := sapphiren
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sapphiren_eea-user 13 TKQ1.221114.001 V14.0.3.0.TNHEUXM release-keys"

BUILD_FINGERPRINT := Redmi/sapphiren_eea/sapphiren:13/TKQ1.221114.001/V14.0.3.0.TNHEUXM:user/release-keys
