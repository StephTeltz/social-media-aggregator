####################################################################
#
#	AUTO-INITALIZE GIT REPOSITORIES
#
#	Date: December 11, 2014
#	Auth: Stephanie M Teltz
#
#	References: https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
#
#	Usage: In terminal, navigate to pre-cloned repository, and run $ bash auto-init.sh
#
####################################################################

#!/bin/bash

function get-origin {
	echo "Set Origin (HTTPS): "

	read origin
}

function get-timestamp {
	now=$(date)
	
}

####################################################################

get-origin
# Prompts & catches git repo origin (HTTPS) from user

git init
# Initializes local directory as a Git repository

git add .
# Adds local files to repo and stages them for commit

get-timestamp
# Gets current time for commit comment
git commit --message="Initialized via auto-init.sh by StephTeltz @ ""$now"
# Commits the tracked changes and prepares them to be pushed to a remote repository

git remote add origin $origin
# Sets the new remote

git remote -v
# Verifies the new remote URL

git push origin master
# Pushes the changes in your local repo up to the remote repo specified as the origin




