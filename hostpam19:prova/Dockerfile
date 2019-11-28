# hostpam
FROM fedora:27
LABEL version="1.0"
LABEL author="WalidElHarrak"
LABEL subject="hostpam-prova"
RUN dnf update -y vi
RUN dnf -y install procps  vim util-linux-user finger passwd sphinx python3-sphinx python2-sphinx gcc pam-devel redhat-rpm-config python-devel python3-devel libevent-devel make
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker

