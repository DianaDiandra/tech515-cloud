#!/bin/bash

# purpose: install nginx on
# note : only works if updated & upgrade have already been run

# update
sudo apt update

# upgrade
# THIS NEEDS FIXING AS REQUIRES USER INPUT
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y

# install nginx
# THIS NEEDS FIXING AS REQUIRES USER INPUT
sudo DEBIAN_FRONTEND=noninteractive apt install nginx -y

# check if nginx is running
systemctl status nginx

# restart nginx - needs to be done when you make a change in an nginx sys
sudo systemctl restart nginx

# enable nginx
sudo systemctl enable nginx
