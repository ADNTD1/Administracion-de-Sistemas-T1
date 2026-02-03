

sudo ip addr flush dev ens37
sudo ip addr add 192.168.100.10/24 dev ens37
sudo ip link set ens37 up
