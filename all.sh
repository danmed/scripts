clear
echo " Updating and upgrading :"
echo ""
apt update && apt uprade -y
echo ""
echo "Installing Docker :"
echo ""
wget -O - https://dlnk.co.uk/docker | bash
echo "Installing Portainer Agent :"
echo ""
wget -O - https://dlnk.co.uk/portaineragent | bash
echo "Enabling SSH Root Access :"
echo ""
wget -O - https://dlnk.co.uk/ssh | bash
echo ""
echo "Complete"
