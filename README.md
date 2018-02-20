Window PE PXE boot using IPXE , Apache2, wimboot, dnsmasq

Windows PE files mv to apache2 default directory(/var/www/html)

# Need to modify dnsmasq.conf 
# Need to modify interface

# dnsmasq.conf default set
* interface : wlan0
* DHCP & IPXE Server Address : 192.168.0.20
* DHCP & IPXE Server Address : 192.168.0.20
* DHCP Range : 192.168.0.200 ~ 192.168.0.250
* IPXE config file : boot.ipxe

# INSTALL
* run dist_install.sh
* run PXE_boot_install.sh

# Tested
* Kali Linux 4.12.0-kali1-amd64

* This Repository dosen't include Windows PE file.

http://dork94.tistory.com
