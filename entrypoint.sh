#!/bin/sh -lx
mkdir ~/.ssh
printf "%s" "$var" >~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

git clone git@github.com:$GITHUB_REPOSITORY.git instructor_repo
cd instructor_repo
gamma generate
gamma deploy
