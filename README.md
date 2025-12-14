# LAPORAN FINAL PROJECT

## Gambaran Umum Jaringan
### Koneksi antar Gedung Utama, Gedung ARA Tech, dan Kantor Cabang
<img width="1338" height="656" alt="image" src="https://github.com/user-attachments/assets/87e07a21-2078-4871-becd-694c33b73ec3" />

## Perancangan IP Addressing

Tabel:
Network ID
Prefix / Subnet Mask
Broadcast Address
Range IP
Jumlah Host
Cadangan ±20%

## Subnetting Gedung ARA Tech (CIDR)

### Subnet per Departemen
| Subnet | Network ID | Netmask (CIDR) | Broadcast Address | Usable IP Range |
| :--- | :--- | :--- | :--- | :--- |
| **B1** | `192.168.4.0` | `255.255.255.128` | `192.168.4.127` | `192.168.4.1 - 192.168.4.126` |
| **B2** | `192.168.4.128` | `255.255.255.128` | `192.168.4.255` | `192.168.4.129 - 192.168.4.254` |
| **B3** | `192.168.5.0` | `255.255.255.128` | `192.168.5.127` | `192.168.5.1 - 192.168.5.126` |
| **B4** | `192.168.5.128` | `255.255.255.128` | `192.168.5.255` | `192.168.5.129 - 192.168.5.254` |
| **B5** | `192.168.6.0` | `255.255.255.192` | `192.168.6.63` | `192.168.6.1 - 192.168.6.62` |
| **C1** | `192.168.7.0` | `255.255.255.128` | `192.168.7.127` | `192.168.7.1 - 192.168.7.126` |
| **C2** | `192.168.7.128` | `255.255.255.128` | `192.168.7.255` | `192.168.7.129 - 192.168.7.254` |
| **C3** | `192.168.8.0` | `255.255.255.128` | `192.168.8.127` | `192.168.8.1 - 192.168.8.126` |
| **C4** | `192.168.8.128` | `255.255.255.128` | `192.168.8.255` | `192.168.8.129 - 192.168.8.254` |
| **C5** | `192.168.9.0` | `255.255.255.192` | `192.168.9.63` | `192.168.9.1 - 192.168.9.62` |
| **D1** | `192.168.10.0` | `255.255.255.224` | `192.168.11.255` | `192.168.10.1 - 192.168.11.254` |

### Subnet Kantor Cabang

## Implementasi dan Konfigurasi Jaringan

### Konfigurasi IP Address & DHCP
Static IP (router, server)

DHCP untuk end device

