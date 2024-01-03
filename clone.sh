#!/bin/bash
set -ex

#--- Set repo dir variable
FOLDER=/home/git/$1

#--- Create repo dir
mkdir -p $FOLDER

#--- Clone repo
git clone git@github.com:nicob8691/$1.git $FOLDER

#--- Move to repo dir
cd $FOLDER

### END ###
