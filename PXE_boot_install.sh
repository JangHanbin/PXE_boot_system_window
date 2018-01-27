#!/bin/sh


git clone git://git.ipxe.org/ipxe.git
cd ipxe/src
make bin/undionly.kpxe
mkdir /tftpboot
mv bin/undionly.kpxe /tftpboot

wget http://git.ipxe.org/releases/wimboot/wimboot-latest.zip
unzip wimboot-latest.zip
WIMDIR = ls | grep wimboot-*-signed
cd "$(WIMDIR)"
cp wimboot /var/www/html
cp dnsmasq.conf /etc/dnsmasq.conf
cp boot.ipxe /var/www/html
cat interfaces >> /etc/network/interfaces

service iptables stop
service dnsmasq restart
service apache2 restart
