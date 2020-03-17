sudo su -
apt -y update
apt -y install libcurl4-openssl-dev libssl-dev zlib1g-dev
git clone https://github.com/ZerBea/hcxdumptool
cd hcxdumptool
make
make install
cd
git clone https://github.com/ZerBea/hcxtools
cd hcxtools
make
make install
cd
ip link set wlan0 down
iw dev wlan0 set type monitor
ip link set wlan0 up
hcxdumptool -o test.pcapng -i wlan0 –-enable_status=1
