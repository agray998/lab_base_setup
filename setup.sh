#!/bin/bash
sudo apt-get update
sudo apt-get install -y curl apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash
sudo apt-get install -y nodejs

curl -fsSL https://get.docker.com | sudo bash
sudo gpasswd -a $USER docker

curl -fsSL https://code-server.dev/install.sh | sh
sudo systemctl enable --now code-server@$USER
sleep 10
mv config.yaml /home/student/.config/code-server/config.yaml
sudo systemctl restart code-server@$USER
echo "Navigate to http://$(curl ifconfig.io):8080 to access your code server"
