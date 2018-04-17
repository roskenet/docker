FROM ubuntu:18.04

RUN apt-get -y update && \
    apt-get -y dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install kubuntu-desktop
RUN useradd -ms /bin/bash developer

ADD eclipse-java-photon.tar.gz /opt/
RUN mv /opt/eclipse /opt/eclipse-java
ADD jdk-10.tar.gz /opt/
ADD eclipse.sh /usr/bin/eclipse
RUN chmod +x /usr/bin/eclipse
RUN echo "export DISPLAY=:0" >> /home/developer/.profile

USER developer
WORKDIR /home/developer
