#!/bin/bash
Login=vpsmurah.me-`</dev/urandom tr -dc X-Z0-9 | head -c4`
masaaktif="3"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`
IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "Host: $IP" 
echo -e "Port: 443,143"
echo -e "Squid: 8080,80"
echo -e "Username: $Login "
echo -e "Password: $Pass\n"
echo -e ""
echo -e "Akun ini hanya aktif 3 hari"
echo -e "Script by \e[1;33;44mWww.vpsmurah.me\e[0m"
