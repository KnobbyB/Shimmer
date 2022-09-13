#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt update
sudo apt install docker-ce -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
cd /opt
sudo mkdir hornet
cd hornet
curl -LO https://github.com/iotaledger/hornet/releases/download/v2.0.0-beta.6/HORNET-2.0.0-beta.8-docker.tar.gz
tar -xf HORNET-2.0.0-beta.8-docker.tar.gz
rm HORNET-2.0.0-beta.8-docker.tar.gz
