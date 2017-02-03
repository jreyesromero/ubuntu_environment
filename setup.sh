# This script will install all the necessary programs that will 
# be used during the project work of EADS.

# commands from: https://docs.docker.com/engine/installation/linux/ubuntu/

echo "UPDATING UBUNTU REPOSITORIES"
 update repositories
 sudo apt-get update

echo "INSTALLING GIT"
sudo apt-get install git

echo "INSTALLING JAVA 8"
sudo apt-add-repository ppa:webupd8team/java

sudo apt-get update

sudo apt-get install oracle-java8-installer

echo "INSTALLING MAVEN"
sudo apt-get maven

echo "INSTALLING CURL"
# Lets install curl (if commented is because it is already installed)
sudo apt-get install curl \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual


echo "ADDING DOCKER REPOSITORIES"
sudo apt-get install apt-transport-https \
                       ca-certificates

curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D

sudo apt-get install software-properties-common

sudo add-apt-repository \
      "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

echo "LETS INSTALL DOCKER!!"
# Install docker (if commented is because it is already installed)
sudo apt-get update

sudo apt-get -y install docker-engine

apt-cache madison docker-engine

# Specific improvement: read from last command output what is the 
# concrete version to install 
sudo apt-get -y install docker-engine=1.13.0-0~ubuntu-trusty

# Update repositories
sudo apt-get update

# INSTALL Docker Compose steps
echo "INSTALLING DOCKER COMPOSE"
sudo curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

# INSTALL DEPENDENCIES FOR JHIPSTER
echo "Installing NodeJS"
curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install -y nodejs

# 1. Install Yeoman: 
echo "Installing Yeoman"
sudo npm install -g yo

# 2. Install Bower: 
echo "Installing Bower"
sudo npm install -g bower

# 3. Install Gulp: 
echo "Installing Gulp"
sudo npm install -g gulp-cli

# 4. Install JHipster: 
echo "Installing JHipster"
sudo npm install -g generator-jhipster



