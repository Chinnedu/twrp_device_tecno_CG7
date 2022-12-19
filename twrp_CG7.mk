#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from CG7 device
$(call inherit-product, device/tecno/CG7/device.mk)

PRODUCT_DEVICE := CG7
PRODUCT_NAME := twrp_CG7
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO cammon 17p
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_cg7_h697-user 11 RP1A.200720.011 111464 release-keys"

BUILD_FINGERPRINT := TECNO/CG7-GL/TECNO-CG7:11/RP1A.200720.011/210524V486:user/release-keys
