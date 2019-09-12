# Container image that runs your code
FROM continuumio/miniconda3

RUN pip install gamma -U --extra-index-url https://pypi.fury.io/artificialsoph/

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
# RUN mkdir ~/.ssh
COPY ssh_config /etc/ssh/ssh_config

RUN git config --global user.email "metis-machine@nix.ai"
RUN git config --global user.name "Metis Machine"

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]