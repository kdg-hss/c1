#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	Julak Bantur
# //	Dscription: Xray MultiPort
# //	email: putrameratus2@gmail.com
# //  telegram: https://t.me/Cibut2d
# //====================================================
# // font color configuration | JULAK BANTUR AUTOSCRIPT
###########- COLOR CODE -##############
VC="\e[0m"
Green="\e[92;1m"
BICyan='\033[1;96m'
BIYellow='\033[1;93m'
WH='\033[1;37m'
y='\033[1;33m' #yellow
l='\033[0;37m'
BGX="\033[42m"
CYAN="\033[96m"
z="\033[96m"
zx="\033[97;1m" # // putih
RED='\033[0;31m'
NC='\033[0m'
gray="\e[1;30m"
Blue="\033[0;34m"
green='\033[1;32m'
grenbo="\e[92;1m"
purple="\033[1;95m"
YELL='\033[0;33m'
cyan="\033[1;36m"
c="\033[5;33m"
###########- END COLOR CODE -##########
##Bawa santai haja sanak ae
CHATID=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 3)
KEY=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 2)
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
#PUB=$(cat /etc/slowdns/server.pub)
#NS=$(cat /etc/xray/dns)
clear
###IZIN SCRIPT###
ipsaya=$(curl -sS ipv4.icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/cibut2d/reg/main/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          JULAK BANTUR AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Cibut2d"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6281250851741"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    sleep 5
    reboot
  fi
}
checking_sc
echo -e "\e[32mloading...\e[0m"
clear
source /var/lib/julak/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi

until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
  clear
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
  echo -e "\e[42m         Add Xray/Vmess Account          \E[0m"
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

  read -rp "Username: " -e user
  CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

  if [[ ${CLIENT_EXISTS} == '1' ]]; then
    clear
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "\e[42m         Add Xray/Vmess Account          \E[0m"
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo "Username sudah ada , Silahkan Gunakan Username lain"
    echo ""
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    read -n 1 -s -r -p "Press any key to back on menu"
    m-vless
  fi
done
uuid=$(cat /proc/sys/kernel/random/uuid)
sec=3
spinner=(⣻ ⢿ ⡿ ⣟ ⣯ ⣷)
while [ $sec -gt 0 ]; do
    echo -ne "\e[33m ${spinner[sec]} Setting up a Premium Account $sec seconds...\r"
    sleep 1
    sec=$(($sec - 1))
done
clear 
echo -e "\e[1;32mINPUT DEPENDECIES ACCOUNT $user\e[0m\n"
until [[ $masaaktif =~ ^[0-9]+$ ]]; do
read -p "Masa Aktif (Hari): " masaaktif
done
#until [[ $Quota =~ ^[0-9]+$ ]]; do
#read -p "Limit Quota (GB): " Quota
#done
until [[ $iplimit =~ ^[0-9]+$ ]]; do
read -p "Limit IP (Device): " iplimit
done
#JulakBanturAutoScript
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmess$/a\### '"$user $exp $uuid"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#vmessgrpc$/a\#vmg '"$user $exp $uuid"'\
},{"id": "'""$uuid""'","alterId": '"0"',"email": "'""$user""'"' /etc/xray/config.json
#JulakBanturAutoScript
asu=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "tls",
      "sni": "${domain}"
}
EOF`
ask=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "80",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess",
      "type": "none",
      "host": "${domain}",
      "tls": "none"
}
EOF`
grpc=`cat<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "443",
      "id": "${uuid}",
      "aid": "0",
      "net": "grpc",
      "path": "vmess-grpc",
      "type": "none",
      "host": "${domain}",
      "tls": "tls",
      "sni": "${domain}"
}
EOF`
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
vmess_base643=$( base64 -w 0 <<< $vmess_json3)
vmesslink1="vmess://$(echo $asu | base64 -w 0)"
vmesslink2="vmess://$(echo $ask | base64 -w 0)"
vmesslink3="vmess://$(echo $grpc | base64 -w 0)"

cat >/var/www/html/vmess-$user.txt <<-END

---------------------
# Format Vmess WS (CDN)
---------------------

- name: Vmess-$user-WS (CDN)
  type: vmess
  server: ${domain}
  port: 443
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: isi.bug
---------------------
# Format Vmess WS (CDN) Non TLS
---------------------

- name: Vmess-$user-WS (CDN) Non TLS
  type: vmess
  server: ${domain}
  port: 80
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  udp: true
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vmess
    headers:
      Host: isi.bug
---------------------
# Format Vmess gRPC (SNI)
---------------------

- name: Vmess-$user-gRPC (SNI)
  server: ${domain}
  port: 443
  type: vmess
  uuid: ${uuid}
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: ${domain}
  skip-cert-verify: true
  grpc-opts:
    grpc-service-name: vmess-grpc

---------------------
 Link Akun Vmess                   
---------------------
Link TLS         : 
${vmesslink1}
---------------------
Link none TLS    : 
${vmesslink2}
---------------------
Link GRPC        : 
${vmesslink3}
---------------------

END

if [ ! -e /etc/vmess ]; then
  mkdir -p /etc/vmess
fi

if [[ $iplimit -gt 0 ]]; then
mkdir -p /etc/julak/limit/vmess/ip
echo -e "$iplimit" > /etc/julak/limit/vmess/ip/$user
else
echo > /dev/null
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vmess/${user}
fi

DATADB=$(cat /etc/vmess/.vmess.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vmess/.vmess.db
fi

echo "### ${user} ${exp} ${uuid} ${iplimit}" >>/etc/vmess/.vmess.db

CHATID="$CHATID"
KEY="$KEY"
TIME="$TIME"
URL="$URL"
TEXT="
<code>──────────────────────</code>
<code>    Xray/Vmess Account</code>
<code>──────────────────────</code>
<code>Remarks      : </code> <code>${user}</code>
<code>Domain       : </code> <code>${domain}</code>
<code>Limit IP     : </code> <code>${iplimit} Device</code>
<code>Port TLS     : </code> <code>443</code>
<code>Port NTLS    : </code> <code>80</code>
<code>Port GRPC    : </code> <code>443</code>
<code>User ID      : </code> <code>${uuid}</code>
<code>AlterId      : 0</code>
<code>Security     : auto</code>
<code>Network      : WS or gRPC</code>
<code>Path         : </code> <code>/vmess</code>
<code>Path Custom  : </code> <code>Multipath</code>
<code>ServiceName  : </code> <code>vmess-grpc</code>
<code>──────────────────────</code>
<code>Link TLS     :</code> 
<code>${vmesslink1}</code>
<code>──────────────────────</code>
<code>Link NTLS    :</code> 
<code>${vmesslink2}</code>
<code>──────────────────────</code>
<code>Link GRPC    :</code> 
<code>${vmesslink3}</code>
<code>──────────────────────</code>
<code>Format OpenClash    : https://${domain}:81/vmess-$user.txt
<code>──────────────────────</code>
<code>Expired      : $expe</code>
<code>──────────────────────</code>
"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

clear
clear
clear
clear
systemctl restart xray > /dev/null 2>&1
service cron restart > /dev/null 2>&1
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "\e[42m    Xray/Vmess Account     \E[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Username     : ${user}" | tee -a /etc/xray/log-create-${user}.log
echo -e "Host Server  : ${domain}" | tee -a /etc/xray/log-create-${user}.log
#echo -e "User Quota   : ${Quota} GB" | tee -a /etc/xray/log-create-${user}.log
echo -e "Limit IP     : ${iplimit} IP" | tee -a /etc/xray/log-create-${user}.log
echo -e "port TLS     : 443" | tee -a /etc/xray/log-create-${user}.log
echo -e "Port NTLS    : 80, 8080" | tee -a /etc/xray/log-create-${user}.log
echo -e "Port GRPC    : 443" | tee -a /etc/xray/log-create-${user}.log
echo -e "User ID      : ${uuid}" | tee -a /etc/xray/log-create-${user}.log
echo -e "AlterId      : 0" | tee -a /etc/xray/log-create-${user}.log
echo -e "Security     : auto" | tee -a /etc/xray/log-create-${user}.log
echo -e "Network      : WS or gRPC" | tee -a /etc/xray/log-create-${user}.log
echo -e "Path TLS     : (/multi path)/vmess " | tee -a /etc/xray/log-create-${user}.log
echo -e "Path NTLS    : (/multi path)/vmess " | tee -a /etc/xray/log-create-${user}.log
echo -e "Path Dynamic : http://BUG.COM/vmess " | tee -a /etc/xray/log-create-${user}.log
echo -e "ServiceName  : vmess-grpc" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Link TLS     : ${vmesslink1}" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Link NTLS    : ${vmesslink2}" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Link GRPC    : ${vmesslink3}" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Format OpenClash : https://${domain}:81/vmess-$user.txt" | tee -a /etc/xray/log-create-${user}.log
echo -e "\033[1;93m───────────────────────────\033[0m" | tee -a /etc/xray/log-create-${user}.log
echo -e "Expired On : $exp" | tee -a /etc/xray/log-create-${user}.log
echo -e "" | tee -a /etc/xray/log-create-${user}.log
read -n 1 -s -r -p "Press any key to back on menu vmess"
m-vmess
