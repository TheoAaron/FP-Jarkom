#!/bin/bash
#============================================
# Client Configuration - Regional Office (Kantor Cabang)
# Network: 192.168.24.0/26
# Gateway: 192.168.24.1
#============================================

# Konfigurasi IP menggunakan DHCP
echo "Configuring Regional Office Client..."

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
ping -c 4 192.168.24.1
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8
echo ""
echo "Testing connectivity to Main Office via GRE Tunnel..."
ping -c 4 192.168.0.1
echo ""
echo "Regional Office connected successfully!"
