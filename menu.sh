#!/bin/bash
##
# BASH menu script that checks:
#   - Install Docker
#   - Install Portainer Agent
#   - Enable Root SSH Access
#   - Update and Upgrade
##
function install_docker() {
    echo ""
	echo "Installing Docker"
  echo ""
	wget -O - https://dlnk.co.uk/docker.sh | bash
	echo ""
}
function install_portainer_agent() {
    echo ""
	echo "Installing Portainer Agent"
    echo ""
	wget -O - https://dlnk.co.uk/portaineragent.sh | bash
    echo ""
}
function enable_root_ssh_access() {
    echo ""
	echo "Enabling Root SSH Access"
    echo ""
	wget -O - https://dlnk.co.uk/ssh.sh | bash
    echo ""
    }
function all_checks() {
	install_docker
	install_portainer_agent
	enable_root_ssh_access
}
##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
##
# Color Functions
##
ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}
menu(){
echo -ne "
My First Menu
$(ColorGreen '1)') Install Docker
$(ColorGreen '2)') Install Portainer Agent
$(ColorGreen '3)') Enable SSH Root Access 
$(ColorGreen '4)') Do All
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) install_docker ; menu ;;
	        2) install_portainer_agent ; menu ;;
	        3) enable_ssh_root_access ; menu ;;
	        4) all_checks ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}
# Call the menu function
menu
