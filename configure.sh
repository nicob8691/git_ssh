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
