#!/bin/bash
set -ex

#--- Clone repo
cd /home/git/$1
git clone git@github.com:nicob8691/$1.git
