#!/bin/bash
mkdir /rere
cd /rere
wget -q "https://github.com/DindaPutriFN/enhanced/raw/main/enhanced.zip" -O ws.zip && unzip ws.zip && rm -fr ws.zip && chmod +x * && cd
cat> /etc/systemd/system/rerews.service << END
[Unit]
Description=WebSocket Enhanced
Documentation=https://t.me/fn_project
After=network.target nss-lookup.target
[Service]
User=nobody
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/rere/ws-com -f /rere/config.yaml
Restart=on-failure
RestartPreventExitStatus=23
[Install]
WantedBy=multi-user.target
END
systemctl enable rerews
systemctl start rerews
systemctl enable rerews
systemctl restart rerews
clear
