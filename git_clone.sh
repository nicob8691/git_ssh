#!/bin/bash
set -e

#--- Make sure ~/git exists
mkdir -p ~/git && cd $_

#--- Clone repo
git clone git@github.com:nicob8691/$1.git
