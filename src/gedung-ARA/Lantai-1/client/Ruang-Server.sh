#!/bin/bash
#============================================
# Server Configuration - Server & Data Center
# Network: 192.168.18.32/28
# Gateway: 192.168.18.33
# VLAN: 30
# Note: Menggunakan IP STATIC untuk server
#============================================

echo "Configuring Server & Data Center..."

# Static IP Configuration for Server
INTERFACE="eth0"
IP_ADDRESS="192.168.18.34"  # Server IP
NETMASK="255.255.255.240"
GATEWAY="192.168.18.33"
DNS1="8.8.8.8"

# Configure Static IP
sudo ifconfig $INTERFACE $IP_ADDRESS netmask $NETMASK
sudo route add default gw $GATEWAY
echo "nameserver $DNS1" | sudo tee /etc/resolv.conf

# Verify Configuration
echo "Server IP Configuration:"
ip addr show
echo ""
echo "Gateway Configuration:"
ip route show
echo ""
echo "DNS Configuration:"
cat /etc/resolv.conf
echo ""
echo "Testing connectivity to gateway..."
ping -c 4 $GATEWAY
echo ""
echo "Testing connectivity to Internet..."
ping -c 4 8.8.8.8

# Server Services
echo ""
echo "Data Center Server ready..."
echo "Deploy services: Database, Web Server, File Server, etc."
