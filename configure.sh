#!/bin/bash
set -ex

#--- Switch to ssh for pushing git_ssh remote repo
git remote set-url --push origin git@github.com:nicob8691/git_ssh.git

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
echo
cat ~/.ssh/id_ed25519.pub
echo
read -p "Make sure you copied pub key to github.com authorised keys. Continue?" -n1 -s
echo

#--- Testing connection
ssh -T git@github.com

### END ###
