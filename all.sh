clear
echo " Updating and upgrading :"
echo ""
apt update && apt upgrade -y
echo ""
echo "Installing Docker :"
echo ""
wget -O - https://dlnk.co.uk/docker | bash
echo "Installing Portainer Agent :"
echo ""
wget -O - https://dlnk.co.uk/portaineragent | bash
echo "Enabling SSH Root Access :"
echo ""
wget -O - https://dlnk.co.uk/exporter | bash
echo "Installing DCW Exporter :"
echo ""
wget -O - https://dlnk.co.uk/ssh | bash
echo ""
echo "Complete"
