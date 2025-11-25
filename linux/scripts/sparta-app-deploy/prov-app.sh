#!/bin/bash

# purpose: provision software + configuration to run Sparta Node JS test app
# tested by: Diana
# tested when:
# works on: AWS EC2 instance running on Ubuntu 22.04 LTS
# works on: fresh VM and if run multiple times

echo Update sources list...
sudo apt update
echo Done!
echo

echo Upgrade...
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
echo Done!
echo

# install nginx - will later be used as a reverse proxy
echo  Install nginx...
sudo DEBIAN_FRONTEND=noninteractive apt install nginx -y
echo Done!
echo

# configure reverse proxy here
echo Configuring reverse proxy...
sudo sed -i 's@try_files \$uri \$uri/ =404;@proxy_pass http://localhost:3000;\
        include /etc/nginx/proxy_params;@' /etc/nginx/sites-available/default
echo Done!
echo


echo Apply changes to Nginx config...
sudo systemctl restart nginx
echo Done!
echo

# nginx is already enabled by default
# sudo systemctl enable nginx

echo Setup for install of Node JS 20...
curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
# ensure that it does not require user input
sudo DEBIAN_FRONTEND=noninteractive bash nodesource_setup.sh
echo Done!
echo

echo Install Node JS 20...
# TEST TO MAKE SURE NO USER INPUT
sudo DEBIAN_FRONTEND=noninteractive apt install nodejs -y
echo Done!
echo


# Clone the app repo
git clone https://github.com/DianaDiandra/tech515-sparta-app.git

# cd into the app folder
cd ~/tech515-sparta-app/nodejs20-sparta-test-app/app

# uncomment next line of you want app to connect to the database
export DB_HOST=mongodb://172.31.25.58:27017/posts

echo Run npm install
npm install
echo Done!
echo

echo Run app...
# NEEDS FIXING BECAUSE IT ENGAGES THE TERMINAL
# FIX BY RUNNING IN THE BACKGROUND
# npm start OR node app.js
echo Installing pm2
sudo npm install -g pm2
echo Starting app using pm2
pm2 save
pm2 startup systemd -u $USER --hp $HOME
echo
echo Done!
echo PM2 processes:
pm2 ls
