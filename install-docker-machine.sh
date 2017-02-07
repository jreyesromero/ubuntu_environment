# This script will execute all the necessary commands to install docker-machine in a ubuntu machine
#
# Dependencies:
#
#    1.- having installed docker binary firstly. Bear in mind that a 64 bits distro is needed. Please visit:
#        https://docs.docker.com/engine/installation/linux/ubuntu/
#
#    2.- having curl installed.
#
# Update repositories
sudo apt-get update

# curl Installation. Uncomment this lines if you haven't already curl.
#sudo apt-get install curl \
#    linux-image-extra-$(uname -r) \
#    linux-image-extra-virtual
#
# Setup docker repositories. Uncomment if you dont have docker already installed.
#sudo apt-get install apt-transport-https \
#                       software-properties-common \
#                       ca-certificates

# Add docker official key
# curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

# sudo apt-get install software-properties-common
# sudo add-apt-repository \
#       "deb https://apt.dockerproject.org/repo/ \
#       ubuntu-$(lsb_release -cs) \
#       main"

# Install docker. 
# sudo apt-get update
# sudo apt-get -y install docker-engine

# Instalation of docker-machine
sudo curl -L https://github.com/docker/machine/releases/download/v0.9.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
 chmod +x /tmp/docker-machine &&
 sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
