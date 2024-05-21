# PS1
PS1='openaia# '

# camera
alias camdet='dmesg | grep "Detected imx415"'
alias camdev='grep "" /sys/class/video4linux/video*/name | grep main'
alias gst-cam0='gst-launch-1.0 v4l2src device=/dev/video11 io-mode=4 ! queue ! video/x-raw,format=NV12,width=1920,height=1080,framerate=30/1 ! glimagesink'

# yolov8n
alias yolov8n-cam0='export DISPLAY=:0.0; xhost +local:;sudo ./yolov8n_cap data/model/yolov8n.rknn 11'

# fanon
alias fanon='sudo bash /root/fan.on'
