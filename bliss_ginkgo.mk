#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

BLISS_BUILDTYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_PROPERTY_OVERRIDES += \
ro.bliss.maintainer = "bezke"

# MiuiCamera
$(call inherit-product, vendor/miuicamera/common/common-vendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="ginkgo" \
    TARGET_DEVICE="ginkgo"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi