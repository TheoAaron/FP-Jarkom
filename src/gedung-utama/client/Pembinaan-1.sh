#!/bin/bash
#============================================
# Client Configuration - Pembinaan & Pengawasan Sekolah
# Network: 192.168.4.192/27
# Gateway: 192.168.4.193
#============================================

# Konfigurasi IP menggunakan DHCP
echo "Configuring Pembinaan Client..."

# Option 1: DHCP Configuration (Recommended)
sudo dhclient -r  # Release current DHCP lease
sudo dhclient     # Request new DHCP lease

# Option 2: Static IP Configuration (Example)
# Uncomment jika ingin menggunakan IP statis
# INTERFACE="eth0"
# IP_ADDRESS="192.168.4.199"
# NETMASK="255.255.255.224"
# GATEWAY="192.168.4.193"
# DNS1="8.8.8.8"

# sudo ifconfig $INTERFACE $IP_ADDRESS netmask $NETMASK
# sudo route add default gw $GATEWAY
# echo "nameserver $DNS1" | sudo tee /etc/resolv.conf

# Verify Configuration
echo "IP Configuration:"
ip addr show
echo ""
echo "Gateway Configuration:"
ip route show
echo ""
echo "DNS Configuration:"
cat /etc/resolv.conf
echo ""
echo "Testing connectivity to gateway..."
ping -c 4 192.168.4.193
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8
