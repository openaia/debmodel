#!/bin/sh

cd /opt/model-zoo/
cd C++/yolov8n_cap
bash build.sh
cp -rf install/yolov8n_cap /home/open/.yolov8n_cap
sudo chown -R open:open /home/open/.yolov8n_cap
rm -rf /opt/*
