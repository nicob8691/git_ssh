#!/bin/bash
set -ex

#--- Make sure /home/git exists and cd
mkdir -p /home/git && cd $_

#--- Clone repo
git clone git@github.com:nicob8691/$1.git
