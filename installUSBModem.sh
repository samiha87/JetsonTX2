
if [ $1 == "-m" ]; then
	sudo apt install wvdial
	if [ $2 == "HUAWEI" ]; then
		sudo cp wvdial/huawei_wvdial.conf /etc/wvdial.conf
		echo "Settings installed for HUAWEI modem with elisa"
		echo "run sudo wvdial to start"
	if [ $2 == "NOKIA-CS15" ]; then
		sudo cp wvdial/nokia_cs15_wvdial.conf /etc/wvdial.conf
		echo "Settings installed for HUAWEI modem with elisa"
                echo "run sudo wvdial to start"
	else 
		echo "Example ./installUSBModem.sh -m HUAWEI"
		echo "Devices, HUAWEI, NOKIA-CS15"
	fi
fi
