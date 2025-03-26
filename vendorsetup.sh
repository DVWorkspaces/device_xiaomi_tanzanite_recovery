#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2020-2024 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="tanzanite"
# set -o xtrace

fox_get_target_device() {
    local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
    if [ -n "$chkdev" ]; then
        FOX_BUILD_DEVICE="$FDEVICE"
    else
        chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
        [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
    fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export LC_ALL="C.UTF-8"
    export ALLOW_MISSING_DEPENDENCIES=true

    # OFR build settings & info
    export FOX_BUILD_DEVICE="tanzanite"
    export FOX_VERSION="R12.1_0_A14"
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
fi
