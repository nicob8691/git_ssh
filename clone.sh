#!/bin/bash
set -e

#--- Set repo dir variable
FOLDER=/home/git/$1

#--- Create repo dir
install -d -o root -g gitusers -m 770 $FOLDER

#--- Clone repo
git clone git@github.com:nicob8691/$1.git $FOLDER

#---
echo "Git repo pulled by $(git config get user.name)" > $FOLDER/OWNER

### END ###
