#!/bin/bash

# ANSI Color Codes for beautiful UI
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

clear
echo -e "${CYAN}==========================================${NC}"
echo -e "${YELLOW}       JAHPHISHER v1.0 - Security Tool    ${NC}"
echo -e "${CYAN}==========================================${NC}"
echo -e "${RED} [!] For Educational Purposes Only [!] ${NC}"
echo ""

echo -e "${GREEN}[1]${NC} Start Local PHP Server"
echo -e "${GREEN}[2]${NC} Check Active Network Ports"
echo -e "${GREEN}[3]${NC} Install Dependencies (PHP/Curl/Nmap)"
echo -e "${GREEN}[4]${NC} Exit"
echo ""
read -p "Select an option: " choice

case $choice in
    1)
        echo -e "${YELLOW}[*] Starting server on port 8080...${NC}"
        php -S 127.0.0.1:8080
        ;;
    2)
        echo -e "${YELLOW}[*] Scanning local network...${NC}"
        nmap localhost
        ;;
    3)
        echo -e "${YELLOW}[*] Installing packages...${NC}"
        pkg update && pkg install php nmap curl -y
        echo -e "${GREEN}[+] Done!${NC}"
        ;;
    4)
        echo -e "${RED}Exiting Jahphisher... Goodbye!${NC}"
        exit
        ;;
    *)
        echo -e "${RED}Invalid Option!${NC}"
        ;;
esac
