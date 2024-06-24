#!/bin/bash

### Color
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'

### System Information
TANGGAL=$(date '+%Y-%m-%d')
TIMES="10"
NAMES=$(whoami)
IMP="wget -q -O"    
CHATID="5423129090"
LOCAL_DATE="/usr/bin/"
MYIP=$(wget -qO- ipinfo.io/ip)
CITY=$(curl -s ipinfo.io/city)
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
KEY="2145515560:6783726550:AAEN_0ZwKeqZC5yZmbiuIBcLF6JXbRpSk_Q"
URL="https://api.telegram.org/bot$KEY/sendMessage"
REPO="https://raw.githubusercontent.com/rwrtx/cfwarp/main/"
APT="apt-get -y install"
start=$(date +%s)


# install basic package
apt install resolvconf -y 

# install clouflare JQ
apt install jq curl -y

# download menu
cd /usr/sbin
wget -O warp "${REPO}menu.sh"
wget -O warp2 "${REPO}warp.sh"

# subcommand
chmod +x warp
chmod +x warp2

warp
