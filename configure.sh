#!/bin/bash
set -ex

#--- Configuring git
git config --global user.name "$(whoami)@$(hostname)"
git config --global user.email "nicob8691@gmail.com"
git config --global core.editor nano
git config --global core.fileMode false
