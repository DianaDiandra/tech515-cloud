#!/bin/bash

# purpose: provision software + configuration to run Sparta Node JS test app

echo Update sources list...
# update
sudo apt update
echo Done!
echo

echo Upgrade...
# upgrade
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
echo Done!
echo

# install nginx - will later be used as a reverese proxy
echo  Install nginx...
sudo DEBIAN_FRONTEND=noninteractive apt install nginx -y
echo Done!
echo

# configure reverse proxy here

echo Apply changes to Nginx config...
sudo systemctl restart nginx
echo Done!
echo

echo
# install node.js
curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
# ensure that it does not require user input
sudo DEBIAN_FRONTEND=noninteractive bash nodesource_setup.sh
# TEST TO MAKE SURE NO USER INPUT
sudo DEBIAN_FRONTEND=noninteractive apt install nodejs -y
echo Done!
echo

# copy app code to VM
.ssh scp -i /home/YOUR_USERNAME/PATH_TO_YOUR_PEM_FILE -r ~/Downloads/app-code ubuntu@YOUR_VM_PUBLIC_IP:/home/ubuntu/

# cd into the app folder

echo Run npm install
npm install
echo Done!
echo

echo Run app...
# NEEDS FIXING BECAUSE IT ENGAGES THE TERMINAL
# FIX BY RUNNING IN THE BACKGROUND
# npm start OR node app.js
echo Done!
echo
