#!/bin/bash

# purpose: provision Mongodb v7 to work with a Sparta Node JS test app
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

echo Install public gpg for MongoDB
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor
echo Done!
echo

echo Add list file for MongoDB
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
echo Done!
echo

echo Reload the package database...
sudo apt-get update
echo Done!
echo

echo Install MondoDB...
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
   mongodb-org=7.0.24 \
   mongodb-org-database=7.0.24 \
   mongodb-org-server=7.0.24 \
   mongodb-mongosh \
   mongodb-org-shell=7.0.24 \
   mongodb-org-mongos=7.0.24 \
   mongodb-org-tools=7.0.24 \
   mongodb-org-database-tools-extra=7.0.24
echo Done!
echo

# Configure bind IP to 0.0.0.0 for remote access
sudo sed -i 's/^  bindIp: .*$/  bindIp: 0.0.0.0/' /etc/mongod.conf

echo Start mongodb
sudo systemctl start mongod
echo Done!
echo

# enable mongo db
echo Enable mongodb
sudo systemctl enable mongod
echo Done!
echo
