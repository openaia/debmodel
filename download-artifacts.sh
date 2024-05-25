#!/bin/sh

if [ -d "prebuilt" ] ; then
    echo "WARN: prebuilt directory exists. Please remove it before running this script."
    exit 0
fi

# u-boot
U_BOOT_REL="v2024.05"
mkdir -p prebuilt
wget -qP prebuilt "https://github.com/edgeble/u-boot/releases/download/$U_BOOT_REL/idbloader.img"
wget -qP prebuilt "https://github.com/edgeble/u-boot/releases/download/$U_BOOT_REL/u-boot.itb"

echo "=== Downloading model-zoo ==="
cd prebuilt &&  git clone https://github.com/openaia/model-zoo.git && cd -

find prebuilt/
echo "=== Remember to remove prebuilt directory for new aritfacts to load ==="
