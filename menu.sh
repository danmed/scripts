#!/bin/bash
apt update && apt upgrade -y && apt install dialog -y
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Dan's Menu"
TITLE="Install Scripts"
MENU="Choose one of the following options:"

OPTIONS=(1 "Install Docker"
         2 "Install Portainer Agent"
         3 "Enable SSH Root Access"
         4 "All")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            wget -O - https://dlnk.co.uk/docker | bash
            ;;
        2)
            wget -O - https://dlnk.co.uk/portaineragent | bash
            ;;
        3)
            wget -O - https://dlnk.co.uk/ssh | bash
            ;;
        4)
            wget -O - https://dlnk.co.uk/all | bash
            ;;
esac
