#!/bin/bash -x

####TESTSCRIPT###

read -p "Enter yes or no here " text

if [[ $text -eq "yes" ]] ; then
	echo "$text"

else
	echo "You have answered $text"

fi
