#!/bin/sh

if [ -d "prebuilt" ] ; then
    echo "ERROR: prebuilt directory exists. Please remove it before running this script."
    exit 1
fi

# u-boot
mkdir -p prebuilt
gdown --id 1FLELEKfztl0c1OLMaOLPo5E_joSey4V_ -O prebuilt/idbloader.img
gdown --id 1mBa8bqwN6YVS8B7yt-OOghhhsVs1iPXg -O prebuilt/u-boot.itb

find prebuilt/
echo "=== Remember to remove prebuilt directory for new aritfacts to loadi ==="
