#!/bin/bash

# nomachine
wget https://download.nomachine.com/download/8.6/Linux/nomachine_8.6.1_3_amd64.deb
sudo apt install ./nomachine*
rm ./nomachine*

# webots 
# https://cyberbotics.com/doc/guide/installation-procedure#installing-the-debian-package-with-the-advanced-packaging-tool-apt
sudo mkdir -p /etc/apt/keyrings
cd /etc/apt/keyrings || exit
sudo wget -q https://cyberbotics.com/Cyberbotics.asc
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/Cyberbotics.asc] https://cyberbotics.com/debian binary-amd64/" | sudo tee /etc/apt/sources.list.d/Cyberbotics.list
cd - || exit
sudo apt-get update
sudo apt-get install webots -y
