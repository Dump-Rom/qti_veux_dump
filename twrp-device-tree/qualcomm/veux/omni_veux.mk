#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from veux device
$(call inherit-product, device/qualcomm/veux/device.mk)

PRODUCT_DEVICE := veux
PRODUCT_NAME := omni_veux
PRODUCT_BRAND := qti
PRODUCT_MODEL := Holi for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux-user 11 RKQ1.211001.001 V13.0.14.0.RKCMIXM release-keys"

BUILD_FINGERPRINT := qti/veux/veux:11/RKQ1.211001.001/V13.0.14.0.RKCMIXM:user/release-keys
