#!/bin/sh

if [ -d "prebuilt" ] ; then
    echo "ERROR: prebuilt directory exists. Please remove it before running this script."
    exit 1
fi

U_BOOT_REL="ncm6b-v2023.11"

# u-boot
mkdir -p prebuilt
wget -qP prebuilt "https://github.com/openaia/u-boot/releases/download/$U_BOOT_REL/idbloader.img"
wget -qP prebuilt "https://github.com/openaia/u-boot/releases/download/$U_BOOT_REL/u-boot.itb"

find prebuilt/
echo "=== Remember to remove prebuilt directory for new aritfacts to load ==="
