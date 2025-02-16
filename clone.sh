#!/bin/bash
set -e

for repo in "$@"
do

	#--- Set repo dir variable
	FOLDER=/home/git/$repo

	#--- Create repo dir
	install -d -o $(whoami) -g gitusers -m 770 $FOLDER

	#--- Clone repo
	git clone git@github.com:nicob8691/$repo.git $FOLDER

	#---
	OWNER="$FOLDER/OWNER"
	echo "Git repo pulled by $(git config get user.name)" > $OWNER
	chown $(whoami):gitusers $OWNER
	chmod 440 $OWNER

done

### END ###
