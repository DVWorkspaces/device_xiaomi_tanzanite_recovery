#!/sbin/sh

# If modules.img is only in KSU
if [ -f "/data/adb/ksu/modules.img" ] && [ ! -f "/data/adb/ap/modules.img" ]; then
  e2fsck -fy /data/adb/ksu/modules.img
  resize2fs -M /data/adb/ksu/modules.img
  mount -t auto -o loop /data/adb/ksu/modules.img /data/adb/modules

# If modules.img is in AP
elif [ -f "/data/adb/ap/modules.img" ] && [ ! -f "/data/adb/ksu/modules.img" ]; then
  e2fsck -fy /data/adb/ap/modules.img
  mount -t auto -o loop /data/adb/ap/modules.img /data/adb/modules

# If modules.img is in both KSU and AP
elif [ -f "/data/adb/ksu/modules.img" ] && [ -f "/data/adb/ap/modules.img" ]; then

  mkdir /data/adb/ksu-modules
  mkdir /data/adb/ap-modules

  e2fsck -fy /data/adb/ksu/modules.img
  e2fsck -fy /data/adb/ap/modules.img
  resize2fs -M /data/adb/ksu/modules.img
  mount -t auto -o loop /data/adb/ksu/modules.img /data/adb/ksu-modules
  mount -t auto -o loop /data/adb/ap/modules.img /data/adb/ap-modules

  # Module for deleting folders (let's say so, but maybe it can be done better)
  mkdir /data/adb/ksu-modules/ModulesTemp
  mkdir /data/adb/ap-modules/ModulesTemp

  echo '#!/system/bin/sh' >/data/adb/ksu-modules/ModulesTemp/service.sh
  echo '#!/system/bin/sh' >/data/adb/ap-modules/ModulesTemp/service.sh
  echo 'rm -rf /data/adb/ksu-modules' >>/data/adb/ksu-modules/ModulesTemp/service.sh
  echo 'rm -rf /data/adb/ap-modules' >>/data/adb/ap-modules/ModulesTemp/service.sh
  echo 'rm -rf /data/adb/modules/ModulesTemp' >>/data/adb/ksu-modules/ModulesTemp/service.sh
  echo 'rm -rf /data/adb/modules/ModulesTemp' >>/data/adb/ap-modules/ModulesTemp/service.sh
  chmod +x /data/adb/ksu-modules/ModulesTemp/service.sh
  chmod +x /data/adb/ap-modules/ModulesTemp/service.sh

fi
