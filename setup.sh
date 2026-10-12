#!/bin/bash
curl -fsSL https://code-server.dev/install.sh | sh
sudo systemctl enable --now code-server@$USER
sleep 10
mv config.yaml /home/student/.config/code-server/config.yaml
sudo systemctl restart code-server@$USER
echo "Navigate to http://$(curl ifconfig.io):8080 to access your code server"
