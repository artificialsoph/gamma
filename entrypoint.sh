#!/bin/bash -lx

# git config --global hub.protocol https
# export GITHUB_USER=$INPUT_USERNAME
# export GITHUB_PASSWORD=$INPUT_PASSWORD
# export GITHUB_TOKEN=$INPUT_TOKEN

hub clone $GITHUB_REPOSITORY --recursive

# set -e

# mkdir -p ~/.ssh
# echo -e "${INPUT_SSH_KEY//_/\\n}" >~/.ssh/id_rsa
# chmod og-rwx ~/.ssh/id_rsa

# ssh-add ~/.ssh/id_rsa
# ssh-keyscan -H github.com >>~/.ssh/known_hosts

# SSH_PATH="$HOME/.ssh"

# mkdir -p "$SSH_PATH"
# touch "$SSH_PATH/known_hosts"

# echo "$PRIVATE_KEY" >"$SSH_PATH/deploy_key"

# chmod 700 "$SSH_PATH"
# chmod 600 "$SSH_PATH/known_hosts"
# chmod 600 "$SSH_PATH/deploy_key"

# eval $(ssh-agent)
# ssh-add "$SSH_PATH/deploy_key"

# ssh-keyscan -t rsa $HOST >>"$SSH_PATH/known_hosts"

# ssh -o StrictHostKeyChecking=no -A -tt -p ${PORT:-22} $USER@$HOST "$*"

# export GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -A -tt -p ${PORT:-22}'

# ssh -T git@github.com

# cat ~/.ssh/id_rsa

# conda activate base

# git clone git@github.com:$GITHUB_REPOSITORY.git instructor_repo
# cd instructor_repo
# gamma generate
# gamma deploy
