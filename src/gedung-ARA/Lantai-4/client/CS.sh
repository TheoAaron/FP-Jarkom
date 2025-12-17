#!/bin/bash
#============================================
# Client Configuration - Customer Service
# Network: 192.168.7.128/26
# Gateway: 192.168.7.129
# VLAN: 10
#============================================

# Konfigurasi IP menggunakan DHCP
echo "Configuring Customer Service Client..."

# DHCP Configuration (Recommended)
sudo dhclient -r  # Release current DHCP lease
sudo dhclient     # Request new DHCP lease

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
ping -c 4 192.168.7.129
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8
