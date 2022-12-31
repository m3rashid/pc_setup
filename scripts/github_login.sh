#!/bin/bash

# create a folder called .gitLogin and move to this folder
# create as many .txt files as number of github accounts you have
# put your classic developer token in each file corresponding to the account

# example:
# token_m3rashid.txt
# token_demo.txt

# write these functions in a file called github_login.sh

gitlogin () {
	if [ $# -eq 0 ]; then
			echo "No arguments supplied"
			exit 1
	fi

	if [ "$1" = "m3rashid" ]; then
			# give full path to the token files corresponding to your accounts
			gh auth login --with-token < ~/code/myStuff/.gitLogin/token_m3rashid.txt
	elif [ "$1" = "demo" ]; then
			gh auth login --with-token  < ~/code/myStuff/.gitLogin/token_demo.txt
	else
			echo "Invalid argument"
	fi

	gh auth status
}

gitlogout () {
	gh auth logout
	gh auth status
}

# usage:
# gitlogin m3rashid
# gitlogout

# source this file from your .bashrc or/and .zshrc

# example:
# write this in the end of your .bashrc or/and .zshrc
# source ~/code/myStuff/.gitLogin/github_login.sh
