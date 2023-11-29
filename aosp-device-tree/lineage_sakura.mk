#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sakura device
$(call inherit-product, device/xiaomi/sakura/device.mk)

PRODUCT_DEVICE := sakura
PRODUCT_NAME := lineage_sakura
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 6 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sakura-user 9 PKQ1.180917.001 20.1.9 release-keys"

BUILD_FINGERPRINT := xiaomi/sakura/sakura:9/PKQ1.180917.001/20.1.9:user/release-keys
