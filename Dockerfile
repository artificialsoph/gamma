# Container image that runs your code
FROM continuumio/miniconda3

RUN pip install gamma -U --extra-index-url https://pypi.fury.io/artificialsoph/

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY copy_ssh.py /copy_ssh.py
# RUN mkdir ~/.ssh
COPY ssh_config /etc/ssh/ssh_config

RUN git config --global user.email "metis-machine@nix.ai"
RUN git config --global user.name "Metis Machine"

RUN apt-get update; apt-get install -y hub

# RUN git config --global hub.protocol https; export GITHUB_USER=$INPUT_USERNAME; export GITHUB_PASSWORD=$INPUT_PASSWORD; export GITHUB_TOKEN=$INPUT_TOKEN

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]