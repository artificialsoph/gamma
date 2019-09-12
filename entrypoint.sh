#!/bin/sh -l -x
mkdir ~/.ssh
echo $INPUT_SSH_KEY >~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

/bin/bash

git clone git@github.com:$GITHUB_REPOSITORY.git instructor_repo
cd instructor_repo
gamma generate
gamma deploy
