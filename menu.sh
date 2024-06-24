#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
# Domain & IPVPS
IPVPS=$(curl -s ipinfo.io/ip)
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# RAM Info
tram=$(free -m | awk 'NR==2 {print $2}')
uram=$(free -m | awk 'NR==2 {print $3}')

echo ""
echo -e "$y                        MAIN MENU $wh"
echo -e "$y                Simple menu WARP Cloudflare $wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                ${WB} ♦️ Server Information ♦️ ${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}♦️${NC} ${YB}OS      :  "$(hostnamectl | grep "Operating System" | cut -d ' ' -f5-) ${NC}         
echo -e "  ${RB}♦️${NC} ${YB}KERNEL  :  $(uname -r) ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}UPTIME  :  $uptime ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}DATE    :  $(date) ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}RAM     :  $uram MB / $tram MB ${NC} "
echo -e "  ${RB}♦️${NC} ${YB}IPVPS   :  $IPVPS ${NC} "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "$YB 1$y.   Install Cloudflare WARP Official $wh"
echo -e "$YB 2$y.   Uninstall Cloudflare WARP Official  $wh"
echo -e "$YB 3$y.   Restart Cloudflare WARP Official  $wh"
echo -e "$YB 4$y.   Enable WARP Client Proxy Mode (SOCKS5port:40000) $wh"
echo -e "$YB 5$y.   Disable WARP Client Proxy Mode  $wh"
echo -e "$YB 6$y.   Install WireGuard components $wh"
echo -e "$YB 7$y.   Configuration WARP IPv4 $wh"
echo -e "$YB 8$y.   Configuration WARP IPv6 $wh"
echo -e "$YB 9$y.   Configuration WARP Dual Stack $wh"
echo -e "$YB 10$y.  Configuration WARP Non-Global $wh"
echo -e "$YB 11$y.  Restart WARP WireGuard service $wh"
echo -e "$YB 12$y.  Disable WARP WireGuard service $wh"
echo -e "$YB 13$y.  Status information $wh"
echo -e "$YB 14$y.  Version information $wh"
echo -e "$YB 15$y.  Help information $wh"
echo -e "$YB 16$y.  Chinese special features menu $wh"
echo -e "$YB 17$y.  Reboot $wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "${YB}"
read -p "Select From Options [ 1 - 17 ] : " apt
case $apt in
1)
clear
bash warp2 install
;;
2)
clear
bash warp2 uninstall
;;
3)
clear
bash warp2 restart
;;
4)
clear
bash warp2 proxy 
;;
5)
clear
bash warp2 unproxy
;;
6)
clear
bash warp2 wg
;;
7)
clear
bash warp2 wg4
;;
8)
clear
bash warp2 wg6 
;;
9)
clear
bash warp2 wgd 
;;
10)
clear
bash warp2 wgx 
;;
11)
clear
bash warp2 rwg 
;;
12)
clear
bash warp2 dwg 
;;
13)
clear
bash warp2 status 
;;
14)
clear
bash warp2 version 
;;
15)
clear
bash warp2 help 
;;
16)
clear
bash warp2 menu 
;;
17)
clear
reboot
;;
*)
clear
menu
;;
esac
