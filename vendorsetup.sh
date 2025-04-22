#!/usr/bin/env bash

export LC_ALL="C.UTF-8"
export ALLOW_MISSING_DEPENDENCIES=true

# OFR build settings & info
export FOX_BUILD_DEVICE="tanzanite"
export FOX_MAINTAINER_PATCH_VERSION="r1"
export FOX_VARIANT="HyperOS"
export FOX_BUILD_TYPE="Unofficial"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_VENDOR_BOOT_RECOVERY=1
export FOX_DELETE_MAGISK_ADDON=1
export FOX_DELETE_AROMAFM=1
export FOX_REMOVE_AAPT=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

# OFR binary files
export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_ASH_IS_BASH=1
export OF_ENABLE_LPTOOLS=1

# OTA
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1

# Flashlight
export OF_FL_PATH1=/sys/class/leds/flashlight/brightness
export OF_FL_PATH2=/sys/class/leds/torch-light0/brightness
