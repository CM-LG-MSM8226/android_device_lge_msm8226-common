#
# Copyright (C) 2017 The LineageOS Project
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

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

RECOVERY_FSTAB_VERSION := 2
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_SDCARD_ON_DATA := true
HAVE_SELINUX := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_IGNORE_MISC_WIPE_DATA := true
TW_USE_TOOLBOX := true
RECOVERY_VARIANT := twrp
