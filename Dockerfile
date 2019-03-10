FROM ubuntu:16.04
RUN mkdir /home/stepik && chmod go+w /home/stepik \
    sudo apt-get update && sudo apt-get -y install nano
ENV EDITOR nano
VOLUME /var/lib/docker/volumes/
WORKDIR /home/stepik/
ARG UNAME=testuser
ARG UID=1000
RUN useradd -m -u $UID -o -s /bin/bash $UNAME
USER $UNAME
CMD /bin/bash
