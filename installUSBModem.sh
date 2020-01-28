if [ $1 == "-m" ]; then
	if [ $2 == "HUAWEI" ]; then
		sudo apt install wvdial
		sudo cp wvdial/huawei_wvdial.conf /etc/wvdial.conf
		echo "Settings installed for HUAWEI modem with elisa"
		echo "run sudo wvdial to start"
	else 
		echo "Example ./installUSBModem.sh -m HUAWEI"
	fi
fi
