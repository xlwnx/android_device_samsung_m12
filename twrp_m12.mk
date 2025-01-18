#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m12 device
$(call inherit-product, device/samsung/m12/device.mk)

PRODUCT_DEVICE := m12
PRODUCT_NAME := twrp_m12
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M127F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m12nsxx-user 13 TP1A.220624.014 M127FXXS9DXJ1 release-keys"

BUILD_FINGERPRINT := samsung/m12nsxx/m12:13/TP1A.220624.014/M127FXXS9DXJ1:user/release-keys
