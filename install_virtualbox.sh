# Script to install virtual box 5.1 in ubuntu machine
#
# IMPORTANT! Its not possible to install virtual box inside a VM launched with virtualbox or vagrant
sudo chmod 777 /etc/apt/sources.list
sudo echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list
sudo chmod 644  /etc/apt/sources.list

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo apt-get update

sudo apt-get install virtualbox-5.1
