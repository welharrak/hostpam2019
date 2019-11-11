# hostpam
FROM fedora:27
LABEL version="1.0"
LABEL author="WalidElHarrak"
LABEL subject="pam"
RUN dnf update -y vi
RUN dnf -y install procps iproute nmap vim util-linux-user finger passwd
RUN mkdir /opt/docker
WORKDIR /opt/docker
