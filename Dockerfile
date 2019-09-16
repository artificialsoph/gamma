# Container image that runs your code
FROM continuumio/miniconda3

RUN pip install gamma -U --extra-index-url https://pypi.fury.io/artificialsoph/

COPY entrypoint.sh /entrypoint.sh

# RUN git config --global user.email "metis-machine@nix.ai"; git config --global user.name "Metis Machine"

# RUN wget https://github.com/github/hub/releases/download/v2.12.4/hub-linux-amd64-2.12.4.tgz

# RUN tar -zxf hub-linux-amd64-2.12.4.tgz -C / && rm hub-linux-amd64-2.12.4.tgz
# RUN /hub-linux-amd64-2.12.4/install

ENTRYPOINT ["/entrypoint.sh"]