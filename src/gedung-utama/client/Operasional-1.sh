#!/bin/bash
#============================================
# Client Configuration - Layanan Operasional Yayasan
# Network: 192.168.0.0/23
# Gateway: 192.168.0.1
#============================================

# Konfigurasi IP menggunakan DHCP
echo "Configuring Operasional Client..."

# Option 1: DHCP Configuration (Recommended)
sudo dhclient -r  # Release current DHCP lease
sudo dhclient     # Request new DHCP lease

# Option 2: Static IP Configuration (Example)
# Uncomment jika ingin menggunakan IP statis
# INTERFACE="eth0"
# IP_ADDRESS="192.168.0.11"
# NETMASK="255.255.254.0"
# GATEWAY="192.168.0.1"
# DNS1="8.8.8.8"
# DNS2="8.8.4.4"

# sudo ifconfig $INTERFACE $IP_ADDRESS netmask $NETMASK
# sudo route add default gw $GATEWAY
# echo "nameserver $DNS1" | sudo tee /etc/resolv.conf
# echo "nameserver $DNS2" | sudo tee -a /etc/resolv.conf

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
ping -c 4 192.168.0.1
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8
