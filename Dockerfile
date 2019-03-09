FROM ubuntu:16.04
RUN sudo mkdir /home/stepik && sudo chmod go+w /home/stepik \
    sudo apt-get update && apt-get -y install nano
ENV $EDITOR nano
ARG 
VOLUME /var/lib/docker/volumes/
WORKDIR /home/stepik/
