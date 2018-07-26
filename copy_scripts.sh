#!/bin/bash

read -p "Are you on your work or home computer? " loc

### HOME ------------>

if [[ $loc = "home" ]] ; then
	read -p "Are you copying scripts in or out? " dir
		if [[ $dir = "in" ]] ; then
			### IN ###
			rsync -v /Volumes/GoogleDrive/My\ Drive/Scripts/bin/* ~/Dropbox/bin/
			echo "Scripts have been copied to ~/Dropbox/bin"
		elif [[ $dir = "out" ]] ; then	
			### OUT ###
			rsync -v ~/Dropbox/bin/* /Volumes/GoogleDrive/My\ Drive/Scripts
			echo "Scripts have been copied to the 'bin' folder under 'Scripts' in Google Drive"	
		else
			echo "$dir is not a valid answer"
			exit 0
		fi
### WORK <--------------	

elif [[ $loc = "work" ]] ; then
	read -p "Are you copying scripts in or out? " dir	
		if [[ $dir = "in" ]]  ; then
			### IN ###
			rsync -v /Volumes/GoogleDrive/My\ Drive/Scripts/* ~/bin/
			echo "Scripts have been copied to ~/bin"
		elif [[ $dir = "out" ]] ; then
			### OUT ###
			rsync -v ~/bin/* /Volumes/GoogleDrive/My\ Drive/Scripts/bin
			echo "Scripts have been copied to the 'bin' folder under 'Scripts' in Google Drive"
		else
			echo "$loc is not a valid answer"
			exit 0
		fi	
else
		echo "$loc is not a valid answer"
		exit 0	
fi


