#!/bin/bash
set -ex

#--- Clone repo
mkdir -p /home/git/$1 && cd
git clone git@github.com:nicob8691/$1.git
cd /home/git/$1