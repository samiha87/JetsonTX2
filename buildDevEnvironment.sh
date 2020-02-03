echo "Make sure jetson is in recovery mode"
cd ~/nvidia/nvidia_sdk/JetPack_4.3_Linux_P3489-0080/Linux_for_Tegra/
sudo ./flash.sh -r -k APP -G backup.img jetson-tx2-4GB mmcblk0p1
rm backup.img
sudo -s
mkdir /usr/local/loopback_tx2
mount -o loop,ro ./backup.img.raw /usr/localo/loopback_tx2
cd /usr/lib
mv aarch64-linux-gnu original_aarch64-linux-gnu
ln -s /usr/local/loopback_tx2/usr/lib/aarch64-linux-gnu
exit
