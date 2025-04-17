# Copyright (c) 2018-2019 The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted (subject to the limitations in the
# disclaimer below) provided that the following conditions are met:
#
#    * Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#
#    * Redistributions in binary form must reproduce the above
#      copyright notice, this list of conditions and the following
#      disclaimer in the documentation and/or other materials provided
#      with the distribution.
#
#    * Neither the name of The Linux Foundation nor the names of its
#      contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS ARE
# GRANTED BY THIS LICENSE. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT
# HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
# GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Android fstab file.
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

#<dev>              <mnt_point>     <type>      <mnt_flags options>   

# Logical Partitions (erofs)
system          /system                     erofs      ro      wait,slotselect,logical,first_stage_mount
system_ext      /system_ext                 erofs      ro      wait,slotselect,logical,first_stage_mount
vendor          /vendor                     erofs      ro      wait,slotselect,logical,first_stage_mount
product         /product                    erofs      ro      wait,slotselect,logical,first_stage_mount
vendor_dlkm     /vendor_dlkm                erofs      ro      wait,slotselect,logical,first_stage_mount
odm_dlkm        /odm_dlkm                   erofs      ro      wait,slotselect,logical,first_stage_mount

# Logical Partitions (ext4) 
system          /system                     ext4       ro      wait,slotselect,logical,first_stage_mount
system_ext      /system_ext                 ext4       ro      wait,slotselect,logical,first_stage_mount
vendor          /vendor                     ext4       ro      wait,slotselect,logical,first_stage_mount
product         /product                    ext4       ro      wait,slotselect,logical,first_stage_mount
vendor_dlkm     /vendor_dlkm                ext4       ro      wait,slotselect,logical,first_stage_mount
odm_dlkm        /odm_dlkm                   ext4       ro      wait,slotselect,logical,first_stage_mount

# Xiaomi Partitions
mi_ext          /mnt/vendor/mi_ext          erofs      ro wait,slotselect,avb=vbmeta,logical,first_stage_mount,nofail
mi_ext          /mnt/vendor/mi_ext          ext4       ro wait,slotselect,avb=vbmeta,logical,first_stage_mount,nofail

# Userdata
/dev/block/by-name/userdata                 /data       f2fs        noatime,nosuid,nodev,gc_merge,discard,noflush_merge,fsync_mode=nobarrier,reserve_root=134217,resgid=1065,inlinecrypt wait,check,formattable,quota,latemount,resize,reservedsize=128m,checkpoint=fs,fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized,keydirectory=/metadata/vold/metadata_encryption,fsverity,sysfs_path=/sys/devices/platform/soc/112b0000.ufshci
/dev/block/by-name/metadata                 /metadata   ext4        noatime,nosuid,nodev,discard wait,check,formattable,first_stage_mount

# Need to have this entry in here even though the mount point itself is no longer needed.
# The update_engine code looks for this entry in order to determine the boot device address
# and fails if it does not find it.
/dev/block/by-name/rescue                   /cache                 ext4   auto                    noatime,nosuid,nodev,noauto_da_alloc,discard wait,check,formattable
/dev/block/by-name/frp                      /persistent            emmc   defaults                defaults
/dev/block/by-name/nvram                    /nvram                 emmc   defaults                defaults
/dev/block/by-name/proinfo                  /proinfo               emmc   defaults                defaults
/dev/block/by-name/lk1                      /lk1                   emmc   defaults                defaults
/dev/block/by-name/bootloader2              /bootloader2           emmc   defaults                defaults
/dev/block/by-name/para                     /para                  emmc   defaults                defaults
/dev/block/by-name/misc                     /misc                  emmc   defaults                defaults
/dev/block/by-name/boot                     /boot                  emmc   defaults                first_stage_mount,nofail,slotselect
/dev/block/by-name/vbmeta_vendor            /vbmeta_vendor         emmc   defaults                first_stage_mount,nofail,slotselect
/dev/block/by-name/vbmeta_system            /vbmeta_system         emmc   defaults                first_stage_mount,nofail,slotselect,avb=vbmeta
/dev/block/by-name/logo                     /logo                  emmc   defaults                defaults
/dev/block/by-name/expdb                    /expdb                 emmc   defaults                defaults
/dev/block/by-name/seccfg                   /seccfg                emmc   defaults                defaults
/dev/block/by-name/tee1                     /tee1                  emmc   defaults                defaults
/dev/block/by-name/tee2                     /tee2                  emmc   defaults                defaults
/dev/block/by-name/scp1                     /scp1                  emmc   defaults                defaults
/dev/block/by-name/scp2                     /scp2                  emmc   defaults                defaults
/dev/block/by-name/sspm1                    /sspm1                 emmc   defaults                defaults
/dev/block/by-name/sspm2                    /sspm2                 emmc   defaults                defaults
/dev/block/by-name/dpm1                     /dpm1                  emmc   defaults                defaults
/dev/block/by-name/dpm2                     /dpm2                  emmc   defaults                defaults
/dev/block/by-name/mcupm1                   /mcupm1                emmc   defaults                defaults
/dev/block/by-name/mcupm2                   /mcupm2                emmc   defaults                defaults
/dev/block/by-name/md1img                   /md1img                emmc   defaults                defaults
/dev/block/by-name/md1dsp                   /md1dsp                emmc   defaults                defaults
/dev/block/by-name/md1arm7                  /md1arm7               emmc   defaults                defaults
/dev/block/by-name/md3img                   /md3img                emmc   defaults                defaults
/dev/block/by-name/gz1                      /gz1                   emmc   defaults                defaults
/dev/block/by-name/gz2                      /gz2                   emmc   defaults                defaults
/dev/block/by-name/ccu                      /ccu                   emmc   defaults                defaults
/dev/block/by-name/vcp                      /vcp                   emmc   defaults                defaults
/dev/block/by-name/gpueb                    /gpueb                 emmc   defaults                defaults
/dev/block/by-name/mcf_ota                  /mcf_ota               emmc   defaults                defaults
/dev/block/by-name/vendor_boot              /vendor_boot           emmc   defaults                defaults
/dev/block/by-name/mvpu_algo1               /mvpu_algo1            emmc   defaults                defaults
/dev/block/by-name/mvpu_algo2               /mvpu_algo2            emmc   defaults                defaults
/dev/block/by-name/apusys1                  /apusys1               emmc   defaults                defaults
/dev/block/by-name/apusys2                  /apusys2               emmc   defaults                defaults
/dev/block/by-name/spmfw                    /spmfw                 emmc   defaults                defaults
/dev/block/by-name/pi_img                   /pi_img                emmc   defaults                defaults
/dev/block/by-name/boot_para                /boot_para             emmc   defaults                defaults
/dev/block/by-name/odmdtbo                  /odmdtbo               emmc   defaults                defaults
/dev/block/by-name/dtbo                     /dtbo                  emmc   defaults                defaults
/dev/block/by-name/otp                      /otp                   emmc   defaults                defaults
/dev/block/by-name/vbmeta                   /vbmeta                emmc   defaults                defaults
