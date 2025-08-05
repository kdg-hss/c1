#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	Julak Bantur
# //	Dscription: Xray MultiPort
# //	email: putrameratus2@gmail.com
# //  telegram: https://t.me/Cibut2d
# //====================================================
# // font color configuration | JULAK BANTUR AUTOSCRIPT
clear
cd
if [ -d /etc/udp ];then
rm -rf /etc/udp
fi
mkdir -p /etc/udp

julak="https://raw.githubusercontent.com/kdg-hss/c1/main/"
# install udp-custom
echo downloading udp-custom
wget -O /etc/udp/udp-custom "${julak}s4/udp-custom-linux-amd64"
echo downloading default config
wget -O /etc/udp/config.json "${julak}s4/config.json"
chmod 777 /etc/udp/config.json
chmod +x /etc/udp/udp-custom

cat > /etc/systemd/system/udp-custom.service <<-END
[Unit]
Description=UDP Custom Service
Documentation=https://t.me/rajaganjil93
After=network.target nss-lookup.target

[Service]
User=root
Type=simple
ExecStart=/etc/udp/udp-custom server -exclude 1,54,55,1000,65535
WorkingDirectory=/etc/udp/
Restart=always
RestartSec=5s

[Install]
WantedBy=default.target
END

systemctl enable udp-custom
systemctl restart udp-custom
clear
