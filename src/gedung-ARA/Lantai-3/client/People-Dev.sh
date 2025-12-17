#!/bin/bash
#============================================
# Client Configuration - People Development
# Network: 192.168.7.64/27
# Gateway: 192.168.7.65
# VLAN: 20
#============================================

# Konfigurasi IP menggunakan DHCP
echo "Configuring People Development Client..."

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
ping -c 4 192.168.7.65
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8
