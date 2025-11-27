#!/bin/bash

# Purpose: Provision software + configuration to run Sparta Node JS test app
# Tested by: Diana
# Works on: AWS EC2 instance running Ubuntu 22.04 LTS
# Works on fresh VM and if run multiple times


echo "Update sources list..."
sudo apt update -y
echo "Done!"
echo

echo "Upgrade packages..."
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
echo "Done!"
echo

# Install nginx
echo "Install nginx..."
sudo DEBIAN_FRONTEND=noninteractive apt install nginx -y
echo "Done!"
echo

# Configure reverse proxy
echo "Configuring reverse proxy..."
sudo grep -q "proxy_pass http://localhost:3000;" /etc/nginx/sites-available/default \
|| sudo sed -i 's@try_files \$uri \$uri/ =404;@proxy_pass http://localhost:3000;\
include /etc/nginx/proxy_params;@' /etc/nginx/sites-available/default
echo "Done!"
echo

# Apply Nginx changes
echo "Restart Nginx..."
sudo systemctl restart nginx
echo "Done!"
echo

# Setup Node.js 20
echo "Setup Node.js 20..."
curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
sudo DEBIAN_FRONTEND=noninteractive bash nodesource_setup.sh
echo "Done!"
echo

echo "Install Node.js 20..."
sudo DEBIAN_FRONTEND=noninteractive apt install nodejs -y
echo "Done!"
echo

# Set environment variable for your DB
export DB_HOST=mongodb://172.31.54.168/posts

rm -rf repo
git clone https://github.com/DianaDiandra/tech515-sparta-app.git repo
cd repo/app

# Install npm dependencies (runs seed.js via postinstall)
echo "Install npm dependencies..."
npm install
echo "Done!"
echo

# Run app in background using PM2
echo "Installing PM2..."
sudo npm install -g pm2
echo "Starting app using PM2..."
pm2 start app.js --name "sparta-app" --update-env || pm2 restart sparta-app --update-env
pm2 save
sudo env PATH=$PATH:/usr/bin pm2 startup systemd -u $USER --hp $HOME

# Show PM2 status
pm2 ls
