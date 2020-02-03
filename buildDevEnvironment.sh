echo "Make sure jetson is in recovery mode"
cd ~/nvidia/nvidia_sdk/JetPack_4.3_Linux_P3489-0080/Linux_for_Tegra/
sudo ./flash.sh -r -k APP -G backup.img jetson-tx2-4GB mmcblk0p1
echo "Removing backup.img to save space"
sudo rm backup.img
echo "Creating mount folder /usr/local/loopback_tx2"
sudo mkdir /usr/local/loopback_tx2
echo "Mounting backup.img.raw"
sudo mount -o loop ./backup.img.raw /usr/local/loopback_tx2
cd /usr/lib
echo "Creating backup of aarch64 symbols"
sudo mv aarch64-linux-gnu original_aarch64-linux-gnu
echo "Create symbolic links to mounted device"
sudo ln -s /usr/local/loopback_tx2/usr/lib/aarch64-linux-gnu
exit
