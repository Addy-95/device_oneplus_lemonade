#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9-user 14 UKQ1.230924.001 R.1a46f9a_1-1 release-keys" \
    BuildFingerprint=OnePlus/OnePlus9/OnePlus9:14/UKQ1.230924.001/R.1a46f9a_1-1:user/release-keys \
    DeviceName=OnePlus9 \
    DeviceProduct=OnePlus9 \
    SystemDevice=OnePlus9 \
    SystemName=OnePlus9


# Mist
MISTOS_MAINTAINER := Addy
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_PREBUILT_GOOGLE_CAMERA := true