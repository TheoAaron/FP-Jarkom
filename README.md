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

### Subnet Kantor Cabang CIDR
| Nama Subnet | Rute | Jumlah IP | Netmask |
| :--- | :--- | :--- | :--- |
| A13 | Gedung ARA > Switch6 > Lantai 1 | 2 | /30 |
| A14 | Gedung ARA > Switch6 > Lantai 2 | 2 | /30 |
| A15 | Gedung ARA > Switch6 > Lantai 3 | 2 | /30 |
| A16 | Gedung ARA > Switch6 > Lantai 4 | 2 | /30 |
| A17 | Gedung ARA > Switch6 > Lantai 5 | 2 | /30 |
| A18 | Gedung ARA > Switch6 > Lantai 1 > IT Support | 45 | /26 |
| A19 | Gedung ARA > Switch6 > Lantai 1 > Ruang Server | 12 | /28 |
| A20 | Gedung ARA > Switch6 > Lantai 1 > Cybersecurity | 22 | /27 |
| A21 | Gedung ARA > Switch6 > Lantai 2 > Marketing | 35 | /26 |
| A22 | Gedung ARA > Switch6 > Lantai 2 > Sales | 25 | /27 |
| A23 | Gedung ARA > Switch6 > Lantai 2 > HR | 25 | /27 |
| A24 | Gedung ARA > Switch6 > Lantai 3 > RnD | 55 | /26 |
| A25 | Gedung ARA > Switch6 > Lantai 3 > People-Dev | 18 | /27 |
| A26 | Gedung ARA > Switch6 > Lantai 4 > Keuangan | 28 | /27 |
| A27 | Gedung ARA > Switch6 > Lantai 4 > Legal | 18 | /27 |
| A28 | Gedung ARA > Switch6 > Lantai 4 > CS | 40 | /26 |
| A29 | Gedung ARA > Switch6 > Lantai 5 > Executive | 12 | /28 |
| A30 | Gedung ARA > Switch6 > Lantai 5 > Guest Lounge | 10 | /28 |
| A31 | Gedung ARA > Switch6 > Lantai 5 > Auditorium | 5 | /29 |

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

### Penggabungan Subnet CIDR Level 1
| Subnet | Gabungan dari (1) | Gabungan dari (2) | Gabungan dari (3) | Netmask Akhir | Total IP |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **B1** | A18 /26 | A19 /28 | A20 /27 | **/25** | 79 |
| **B2** | A21 /26 | A22 /27 | A23 /27 | **/25** | 85 |
| **B3** | A24 /26 | A25 /27 | - | **/25** | 73 |
| **B4** | A26 /23 | A27 /23 | A28 /23 | **/25** | 86 |
| **B5** | A29 /28 | A30 /28 | A31 /28 | **/26** | 37 |

### Penggabungan Subnet CIDR Level 2
| Subnet | Gabungan dari (1) | Gabungan dari (2) | Netmask Akhir | Total IP |
| :--- | :--- | :--- | :--- | :--- |
| **C1** | A13 /30 | B1 /25 | **/25** | 81 |
| **C2** | A14 /30 | B2 /25 | **/25** | 87 |
| **C3** | A15 /30 | B3 /25 | **/25** | 75 |
| **C4** | A16 /30 | B4 /25 | **/25** | 88 |
| **C5** | A17 /30 | B5 /26 | **/26** | 39 |

### Penggabungan Subnet CIDR Level 3
| Subnet | Gabungan dari | Netmask Akhir | Total IP |
| :--- | :--- | :--- | :--- |
| **D1** | C1 /25, C2 /25, C3 /25, C4 /25, C5 /26 | **/23** | 370 |

## Subnetting Gedung Utama

| Subnet | Network ID | Netmask | Broadcast | Range IP Usable | Rute / Deskripsi | CIDR |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **A1** | `192.168.3.232` | `255.255.255.252` | `192.168.3.235` | `192.168.3.233 - 192.168.3.234` | Gedung Utama > SDM | `/30` |
| **A2** | `192.168.3.0` | `255.255.255.128` | `192.168.3.127` | `192.168.3.1 - 192.168.3.126` | Gedung Utama > SDM > Switch0 > RSDM > SDM-1 (95 Host) | `/25` |
| **A3** | `192.168.3.236` | `255.255.255.252` | `192.168.3.239` | `192.168.3.237 - 192.168.3.238` | Gedung Utama > Kurikulum | `/30` |
| **A4** | `192.168.2.0` | `255.255.255.0` | `192.168.2.255` | `192.168.2.1 - 192.168.2.254` | Gedung Utama > Kurikulum > Switch1 > RKurikulum > Kurikulum-1 (220 Host) | `/24` |
| **A5** | `192.168.3.240` | `255.255.255.252` | `192.168.3.243` | `192.168.3.241 - 192.168.3.242` | Gedung Utama > Sarana | `/30` |
| **A6** | `192.168.3.128` | `255.255.255.192` | `192.168.3.191` | `192.168.3.129 - 192.168.3.190` | Gedung Utama > Sarana > Switch2 > RSarana > Sarana-1 (45 Host) | `/26` |
| **A7** | `192.168.3.244` | `255.255.255.252` | `192.168.3.247` | `192.168.3.245 - 192.168.3.246` | Gedung Utama > Pembinaan | `/30` |
| **A8** | `192.168.3.192` | `255.255.255.224` | `192.168.3.223` | `192.168.3.193 - 192.168.3.222` | Gedung Utama > Pembinaan > Switch3 > RPembinaan > Pembinaan-1 (18 Host) | `/27` |
| **A9** | `192.168.3.248` | `255.255.255.252` | `192.168.3.251` | `192.168.3.249 - 192.168.3.250` | Gedung Utama > IT | `/30` |
| **A10** | `192.168.3.224` | `255.255.255.248` | `192.168.3.231` | `192.168.3.225 - 192.168.3.230` | Gedung Utama > IT > Switch4 > RIT > IT-1, ServerIT-1 (6 Host) | `/29` |
| **A11** | `192.168.3.252` | `255.255.255.252` | `192.168.3.255` | `192.168.3.253 - 192.168.3.254` | Gedung Utama > Operasional | `/30` |
| **A12** | `192.168.0.0` | `255.255.254.0` | `192.168.1.255` | `192.168.0.1 - 192.168.1.254` | Gedung Utama > Operasional > Switch5 > ROperasional > Operasional-1 (380 Host) | `/23` |

## Konfigurasi NAT Overload

### Konfigurasi NAT (Screenshot pembuktian ping)

## Konfigurasi GRE Tunnel

### Ping antar router

### Ping antar jaringan

## Pengujian dan Konektivitas

### Pembuktian ping

### Pembuktian traceroute

### Pembuktian output console
