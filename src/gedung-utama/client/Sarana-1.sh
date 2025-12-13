#!/bin/bash
#============================================
# Client Configuration - Sarana Prasarana
# Network: 192.168.4.128/26
# Gateway: 192.168.4.129
#============================================

# Konfigurasi IP menggunakan DHCP
echo "Configuring Sarana Prasarana Client..."

# Option 1: DHCP Configuration (Recommended)
sudo dhclient -r  # Release current DHCP lease
sudo dhclient     # Request new DHCP lease

# Option 2: Static IP Configuration (Example)
# Uncomment jika ingin menggunakan IP statis
# INTERFACE="eth0"
# IP_ADDRESS="192.168.4.136"
# NETMASK="255.255.255.192"
# GATEWAY="192.168.4.129"
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
ping -c 4 192.168.4.129
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8
