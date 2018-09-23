#!/bin/bash
set -e

sudo apt-get update
echo "APT updated"
sudo apt-get -y upgrade
echo "Starting Python, Git install"
sudo apt-get install -y python-dev python-pip git
sudo pip install ansible
sudo timedatectl set-timezone Asia/Jerusalem
sudo localectl set-locale LANG=en_US.utf8
sudo git clone "https://github.com/ronyblum/AWS-AMI-Packer.git"
cd AWS-AMI-Packer/ansible
echo "Running Ansible Playbook"
sudo ansible-playbook lamp.yml
echo "Installation completed. Removing ansible playbook"
sudo rm -rf ~/AWS-AMI-Packer
