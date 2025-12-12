#!/bin/bash
#============================================
# Client Configuration - Guest Lounge
# Network: 192.168.5.16/28
# Gateway: 192.168.5.17
# VLAN: 20
#============================================

# Konfigurasi IP menggunakan DHCP
echo "Configuring Guest Lounge Client..."

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
ping -c 4 192.168.5.17
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8
