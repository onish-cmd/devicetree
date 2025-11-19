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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from YTX705 device (FIXED: Folder name)
$(call inherit-product, device/lenovo/YTX705/device.mk)

PRODUCT_DEVICE := YTX705
PRODUCT_NAME := omni_YTX705
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo YTX705
PRODUCT_MANUFACTURER := lenovo

PLATFORM_VERSION_CODENAME := PPR1
PLATFORM_VERSION := 9.0.0

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="YTX705-user 10 QKQ1.191224.003 X705X_S001137_220802_ROW release-keys"  # FIXED: Build prop

BUILD_FINGERPRINT := Lenovo/YTX705/YTX705:10/QKQ1.191224.003/X705X_S001137_220802_ROW:user/release-keys # FIXED: Fingerprint
