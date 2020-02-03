# JetsonTX2_Tools
Contains tools and scripts that's suitable for Jetson TX2
WVDIAL has been tested succesfully on Jetson TX2. Had issues initializing HUAWEI USB-modem on host pc.

## Build crosscompile environment with Qt

Set jetson tx to recovery mode
While Jetson is turned off, press and hold recovery button. Power on the jetson and release recovery button.

Flashing Jetson TX2
1. Set jetson to recovery mode
2. NVIDIA SDK manager
3. Follow the process instructed by SDK manager.

Install Qt
1. SSH to your jetson
2. sudo apt-get install qt5-default qtcreator -y
3. sudo apt-get install qt5-doc qt5-doc-html qtbase5-doc-html qtbase5-examples -y
4. Install here all libraries needed for your project. Otherwise you need to clone the Jetson each time new libraries are installed

Clone Jetson
1. Set Jetson to recovery mode
2. Enter to your Jetson installation folder on host pc
3. sudo ./flash.sh -r -k APP -G backup.img jetson-tx2-4GB mmcblk0p1

1. Mount the created image
2. sudo -s
3. mkdir /usr/local/loopback_tx2
4. mount -o loop,ro ./backup.img.raw /usr/localo/loopback_tx2
5. cd /usr/lib
6. mv aarch64-linux-gnu original_aarch64-linux-gnu
4. ln -s /usr/local/loopback_tx2/usr/lib/aarch64-linux-gnu
4. exit

Create a new kit for Jetson on host pc Qt Creater
1. Open Qt Creator
2. Go to projects and open manage kits.
3.
 
# References
- https://dev.intelrealsense.com/docs/nvidia-jetson-tx2-installation
- https://dev.intelrealsense.com/docs/compiling-librealsense-for-linux-ubuntu-guide
