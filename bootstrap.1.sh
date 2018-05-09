#!/usr/bin/env bash

Update () {
    echo "-- Update packages --"
    sudo apt-get update
    sudo apt-get upgrade
}
Update


echo "-- Install tools and helpers --"
sudo apt-get install -y --force-yes python-software-properties vim htop curl git npm build-essential libssl-dev

echo "-- Add Docker Repo--"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu artful stable"

# update function call
Update

# install docker
sudo apt-get install -y docker-ce
sudo apt-get install -y docker-compose

echo "-- Install NodeJS --"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

# locale
sudo apt-get install -y language-pack-ko
# or
# sudo locale-gen ko_KR.UTF-8
