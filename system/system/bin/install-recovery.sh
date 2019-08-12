#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:16851872:280051e7d1471f7439113321b312174229f4d1f9; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9083808:281baa8c7b31d0d033afc599f7aa5ddfbaeee01d EMMC:/dev/block/platform/bootdevice/by-name/recovery 280051e7d1471f7439113321b312174229f4d1f9 16851872 281baa8c7b31d0d033afc599f7aa5ddfbaeee01d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
