#
# Copyright (C) 2015 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL bullhead devices, and
# are also specific to bullhead devices
#
# Everything in this directory will become public


ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lge/bullhead-kernel/Image.gz-dtb
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.rc:root/init.bullhead.rc \
    device/lge/bullhead/init.bullhead.usb.rc:root/init.bullhead.usb.rc \
    device/lge/bullhead/init.bullhead.power.rc:root/init.bullhead.power.rc \
    device/lge/bullhead/fstab.bullhead:root/fstab.bullhead \
    device/lge/bullhead/ueventd.bullhead.rc:root/ueventd.bullhead.rc \
    device/lge/bullhead/init.bullhead.sensorhub.rc:root/init.bullhead.sensorhub.rc \
    device/lge/bullhead/init.bullhead.fp.rc:root/init.bullhead.fp.rc

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/lge/bullhead/media_codecs.xml:system/etc/media_codecs.xml

# Audio
PRODUCT_COPY_FILES += \
    device/lge/bullhead/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/bullhead/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/bullhead/mixer_paths.xml:system/etc/mixer_paths.xml

#Sound Trigger
PRODUCT_COPY_FILES += \
    device/lge/bullhead/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/lge/bullhead/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Input device files
PRODUCT_COPY_FILES += \
    device/lge/bullhead/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/bullhead/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# Prebuilt input device calibration files
PRODUCT_COPY_FILES += \
    device/lge/bullhead/touch_dev.idc:system/usr/idc/touch_dev.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# For SPN display
PRODUCT_COPY_FILES += \
    device/lge/bullhead/spn-conf.xml:system/etc/spn-conf.xml

# For GPS
PRODUCT_COPY_FILES += \
    device/lge/bullhead/sec_config:system/etc/sec_config

# NFC config files
PRODUCT_COPY_FILES += \
    device/lge/bullhead/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lge/bullhead/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# For WiFi
PRODUCT_COPY_FILES += \
    device/lge/bullhead/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/lge/bullhead/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/bullhead/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/qca_cld/WCNSS_cfg.dat \
    device/lge/bullhead/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
    device/lge/bullhead/msm_irqbalance.conf:vendor/etc/msm_irqbalance.conf

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_CHARACTERISTICS := nosdcard

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_PACKAGES += \
    gralloc.msm8992 \
    hwcomposer.msm8992 \
    libgenlock \
    memtrack.msm8992 \
    lights.bullhead

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

PRODUCT_PACKAGES += \
    audio.primary.msm8992 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_PACKAGES += \
    librmnetctl \
    rmnetcli

# GPS module
PRODUCT_PACKAGES += \
    libgps.utils \
    libloc_core \
    libloc_eng \
    libloc_api_v02 \
    gps.msm8992

# GPS configuration
PRODUCT_COPY_FILES += \
    device/lge/bullhead/gps.conf:system/etc/gps.conf

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.bullhead \
    NfcNci \
    Tag

# Fingerprint Sensor
PRODUCT_PACKAGES += \
    fingerprint.bullhead

# Wi-Fi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Camera
PRODUCT_PACKAGES += \
    camera.msm8992 \
    libcamera \
    libmmcamera_interface \
    libmmcamera_interface2 \
    libmmjpeg_interface \
    libqomx_core \
    mm-qcamera-app

# Sensor & activity_recognition HAL
PRODUCT_PACKAGES += \
    sensors.bullhead \
    activity_recognition.bullhead \
    sensortool.bullhead

DEVICE_PACKAGE_OVERLAYS := \
    device/lge/bullhead/overlay

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/platform/soc.0/f9824900.sdhci/by-name/persistent

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# for perfd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min_freq_0=384000
    ro.min_freq_4=384000

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_cdma_sub=0

# LTE, CDMA, GSM/WCDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=10 \
    telephony.lteOnCdmaDevice=1 \
    persist.radio.mode_pref_nv10=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Setup custom emergency number list based on the MCC. This is needed by RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.custom_ecc=1

# Request modem to send PLMN name always irrespective
# of display condition in EFSPN.
# RIL uses this property.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.always_send_plmn=true

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# Update 1x signal strength after 2s
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.radio.snapshot_enabled=1 \
    persist.radio.snapshot_timer=2

# Set bluetooth soc to rome
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=rome

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/persist/bdaddr.txt

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Modem debugger
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += \
    QXDMLogger

PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.diag.rc.userdebug:root/init.bullhead.diag.rc
else
PRODUCT_COPY_FILES += \
    device/lge/bullhead/init.bullhead.diag.rc.user:root/init.bullhead.diag.rc
endif

# setup dm-verity configs.
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc.0/f9824900.sdhci/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc.0/f9824900.sdhci/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8994/msm8992.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8994/msm8994-gpu-vendor.mk)
