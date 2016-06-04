#
# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# VTS build target is to produce instrumented Android system images
# which are needed for some Vendor Test Suite (VTS) validation and
# evaluation operations. VTS build targets are exclusively used as
# part of the development and should not be used by any final products.

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/lge/bullhead/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_bullhead_vts
PRODUCT_DEVICE := bullhead
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on BullHead (VTS)
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := true

TARGET_USES_VTS_CODE_COVERAGE_INSTRUMENTATION := true

$(call inherit-product, device/lge/bullhead/device.mk)
$(call inherit-product-if-exists, vendor/lge/bullhead/device-vendor.mk)

PRODUCT_PACKAGES += \
    Launcher3

