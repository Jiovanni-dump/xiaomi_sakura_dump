#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30272846:f89f38a1a85fce8719116d17dfd271e38587b377; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23573834:c9129cd5cc0e396575bef28183e7be7dc8264403 EMMC:/dev/block/bootdevice/by-name/recovery f89f38a1a85fce8719116d17dfd271e38587b377 30272846 c9129cd5cc0e396575bef28183e7be7dc8264403:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
