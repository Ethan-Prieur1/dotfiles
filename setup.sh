#!/bin/bash
#
# On a new AWS Debian Buster EC2 Instance you have to do this each time
# sudo apt update
# sudo apt install -y git
#
# git clone https://github.com/Ethan-Prieur1/dotfiles.git
# cd update and upgrade

Echo Update and Upgrading
sudo apt-get update
sudo apt-get full-upgrade -y

# Configure git
git config --global user.email "ethan.prieur@mths.ca"
git config --global user.name "Ethan-Prieur1"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global fetch.prune true

# Make Folders
mkdir ICS4U

echo Done.
