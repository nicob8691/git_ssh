#!/bin/bash
set -ex

#--- Clone repo
git clone git@github.com:nicob8691/$1.git /home/git
cd /home/git/$1