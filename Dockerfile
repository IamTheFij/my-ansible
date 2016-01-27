FROM ubuntu:latest
MAINTAINER ViViDboarder <vividboarder@gmail.com>

RUN apt-get install -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible ssh && \
    rm -fr /var/lib/apt/lists/*

# contains all inventory config
ADD inventory /etc/ansible
# contains all playbooks
ADD playbooks playbooks

# should be mounted from ./ssh with pub and private keys
# private key should be in gitignore
RUN mkdir /home/root/.ssh
VOLUME /home/root/.ssh
