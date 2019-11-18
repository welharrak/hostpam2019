# hostpam
FROM fedora:27
LABEL version="1.0"
LABEL author="WalidElHarrak"
LABEL subject="hostpam"
RUN dnf update -y vi
RUN dnf -y install procps iproute nmap vim util-linux-user finger passwd pam_mount nfs-utils nss-pam-ldapd
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker

