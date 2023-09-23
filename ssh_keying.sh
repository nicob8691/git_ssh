#!/bin/bash
set -e

#--- Configuring git
git config --global user.name "$(whoami)@$(hostname)"
git config --global user.email "nicob8691@gmail.com"
git config --global core.editor nano
git config --global core.fileMode false

#--- Creating and activating ssh key for @github.com
ssh-keygen -t ed25519 -C "$(whoami)@$(hostname)"
ssh-add ~/.ssh/id_ed25519

#--- Prompting public key for adding it to github.com
cat .ssh/id_ed25519.pub
read -p "Make sure you copied pub key to github authorised keys. Continue?" -n1 -s

#--- Testing connection
ssh -T git@github.com
