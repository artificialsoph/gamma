#!/bin/sh -lx
mkdir -p ~/.ssh && echo -e "${INPUT_SSH_KEY//_/\\n}" >~/.ssh/id_rsa && chmod og-rwx ~/.ssh/id_rsa
# echo "$INPUT_SSH_KEY" >~/.ssh/id_rsa
# chmod 600 ~/.ssh/id_rsa

ssh -T git@github.com

# cat ~/.ssh/id_rsa

# conda activate base

# python copy_ssh.py

# cat ~/.ssh/id_rsa

git clone git@github.com:$GITHUB_REPOSITORY.git instructor_repo
cd instructor_repo
gamma generate
gamma deploy
