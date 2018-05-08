#!/usr/bin/env bash

Update () {
    echo "-- Update packages --"
    sudo apt-get update
    sudo apt-get upgrade
}
Update


echo "-- Install tools and helpers --"
sudo apt-get install -y --force-yes python-software-properties vim htop curl git npm build-essential libssl-dev

echo "-- Install PPA's --"
sudo add-apt-repository ppa:ondrej/php
sudo add-apt-repository ppa:chris-lea/redis-server

# update function call
Update

echo "-- Install NodeJS --"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# locale
sudo apt-get install -y language-pack-ko
# or
# sudo locale-gen ko_KR.UTF-8

echo "-- Installl Docker --"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu artful stable"
sudo apt-get update
sudo apt-get install -y docker-ce