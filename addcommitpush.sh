#!/bin/bash

### Guide
# https://terracoders.com/blog/git-add-commit-and-push-all-once-bash-function
###

# Regular Colors
Black='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
ENDCOLOR='\033[0;37m'        # White

function git_addcommitpush () {

    current=$(git branch | grep "*" | cut -b 3-)

    
    arg=\'"$@"\'
    echo "A resualt branchs from git : $current"
    # A params from user
    echo -e "${Green} A params from user: ${arg} ${ENDCOLOR}"

    git status
    read -p "Please enter commit message:" message
    git add . && git status && git commit -a -m "$message"
    read -p "This script will perform system maintenance tasks. Are you sure you want to proceed? (y/n) " confirm

    echo "confirm: $confirm"
    # echo "Where to push?"
    # read -i "$current" -e branch
    read -p "Where to push? " current_branch
    echo "a current branch: $current_branch"

    # echo "You sure you wanna push? (y/n)"
    # read -i "y" -e yn
    read -p "You sure you wanna push? (y/n): " yn

    if [ "$yn" = y ]; then
        #git push origin "$branch"
        git push origin "$current_branch"
    else
        echo -e "${RED} git push not send changes to remote git repository ${ENDCOLOR}"
    fi

}

git_addcommitpush $1
