#!/bin/bash
set -ex

#--- Configure local repo /home/git
mkdir -p /home/git
chmod -R 777 /home/git

#--- Configuring git
git config --global user.name "$(whoami)@$(hostname)"
git config --global user.email "nicob8691@gmail.com"
git config --global core.editor nano
git config --global core.fileMode false

#--- Creating and activating ssh key for @github.com
ssh-keygen -t ed25519 -C "$(whoami)@$(hostname)"

#--- Prompting public key for adding it to github.com
#cat ~/.ssh/id_ed25519.pub
read -p "Make sure you copied pub key to github.com authorised keys. Continue?" -n1 -s
echo

#--- Testing connection
ssh -T git@github.com

