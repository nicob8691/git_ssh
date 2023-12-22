#!/bin/bash
set -ex

FOLDER=/home/git/$1

#--- Clone repo
mkdir -p $FOLDER
git clone git@github.com:nicob8691/$1.git $FOLDER
cd $FOLDER