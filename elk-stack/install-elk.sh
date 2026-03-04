#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing Java..."
sudo apt install openjdk-11-jdk -y

echo "Adding Elastic repo..."
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

sudo apt install apt-transport-https -y

echo "deb https://artifacts.elastic.co/packages/8.x/apt stable main" | \
sudo tee /etc/apt/sources.list.d/elastic-8.x.list

sudo apt update

echo "Installing ELK Stack..."
sudo apt install elasticsearch logstash kibana -y

sudo systemctl enable elasticsearch
sudo systemctl start elasticsearch

sudo systemctl enable kibana
sudo systemctl start kibana

sudo systemctl enable logstash
sudo systemctl start logstash

echo "ELK Installation Complete"
