#!/usr/bin/env bash
set -e

#Install LAMP
echo Updating apt
sudo apt update
sudo apt upgrade
echo Installing LAMP
sudo apt install -y apache2 mysql-server php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
echo Restarting Apache
sudo service apache2 restart

#Install Verification
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

#CodeDeploy Agent Install
echo Installing CodeDeploy Agent
sudo apt-get install -y ruby wget
cd ~
wget https://aws-codedeploy-eu-west-1.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
