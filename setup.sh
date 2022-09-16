#!/bin/bash
#
# On a new AWS Debian Buster EC2 Instance you have to do this each time
# sudo apt update
# sudo apt install -y git
#
# git clone https://github.com/Ethan-Prieur1/dotfiles.git
# cd ./dotfiles && sh ./setup.sh
# update and upgrade

echo Update and Upgrading
sudo apt-get update
sudo apt-get full-upgrade -y

# Configure git
git config --global user.email "ethan.prieur@mths.ca"
git config --global user.name "Ethan-Prieur1"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global fetch.prune true

# Make Folders
mkdir ~/ICS4U
mkdir ~/ICS4U/Unit1
mkdir ~/ICS4U/Unit2
mkdir ~/ICS4U/Unit3
mkdir ~/ICS4U/Unit4
mkdir ~/ICS4U/Assignments
mkdir ~/ICS4U/Unit1/Unit1-01
mkdir ~/ICS4U/Unit1/Unit1-02
mkdir ~/ICS4U/Unit1/Unit1-03
mkdir ~/ICS4U/Unit1/Unit1-04
mkdir ~/ICS4U/Unit1/Unit1-05
mkdir ~/ICS4U/Unit1/Unit1-06
mkdir ~/ICS4U/Unit1/Unit1-07
mkdir ~/ICS4U/Unit2/Unit2-01
mkdir ~/ICS4U/Unit2/Unit2-02
mkdir ~/ICS4U/Unit2/Unit2-03
mkdir ~/ICS4U/Unit2/Unit2-04
mkdir ~/ICS4U/Unit2/Unit2-05
mkdir ~/ICS4U/Unit2/Unit2-06
mkdir ~/ICS4U/Unit2/Unit2-07
mkdir ~/ICS4U/Unit2/Unit2-08
mkdir ~/ICS4U/Unit2/Unit2-09
mkdir ~/ICS4U/Unit2/Unit2-10
mkdir ~/ICS4U/Unit3/Unit3-01
mkdir ~/ICS4U/Unit3/Unit3-02
mkdir ~/ICS4U/Unit3/Unit3-03
mkdir ~/ICS4U/Unit3/Unit3-04
mkdir ~/ICS4U/Unit3/Unit3-05

# Setup Github SSH keys
echo "Press Return 3 Times"
ssh-keygen -t ed25519 -C "ethan.prieur@mths.ca"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
echo "Copy and Paste above key into github ssh keys"
echo "once done press return"
read blank
echo "You will be asked if you want to continue, type 'yes' "
echo "After that press anything"
read blank
ssh -T git@github.com

echo Done.
