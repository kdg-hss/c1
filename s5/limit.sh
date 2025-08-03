julak="https://raw.githubusercontent.com/kdg-hss/c1/main/"
wget -q -O /etc/systemd/system/limitssh.service "${julak}s5/limitssh.service" && chmod +x limitssh.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvmess.service "${julak}s5/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${julak}s5/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${julak}s5/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "${julak}s5/limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
wget -q -O /etc/xray/limit.vmess "${julak}s5/vmess" >/dev/null 2>&1
wget -q -O /etc/xray/limit.vless "${julak}s5/vless" >/dev/null 2>&1
wget -q -O /etc/xray/limit.trojan "${julak}s5/trojan" >/dev/null 2>&1
wget -q -O /etc/xray/limit.shadowsocks "${julak}s5/shadowsocks" >/dev/null 2>&1
chmod +x /etc/ssh/limit.ssh
chmod +x /etc/xray/limit.vmess
chmod +x /etc/xray/limit.vless
chmod +x /etc/xray/limit.trojan
chmod +x /etc/xray/limit.shadowsocks
systemctl daemon-reload
systemctl enable --now limitssh
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
# systemctl start limitssh
# systemctl start limitvmess
# systemctl start limitvless
# systemctl start limittrojan
# systemctl start limitshadowsocks
# systemctl restart limitssh
# systemctl restart limitvmess
# systemctl restart limitvless
# systemctl restart limittrojan
# systemctl restart limitshadowsocks
