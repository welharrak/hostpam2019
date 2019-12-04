#! /bin/bash
useradd local1
useradd local2
useradd local3
echo "local1" | passwd --stdin local1
echo "local2" | passwd --stdin local2
echo "local3" | passwd --stdin local3

#athconfig per poder-nos autenticar com usuaris ldap
bash /opt/docker/auth.sh

#copiem fitxers pam_mount i system-auth
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
cp /opt/docker/system-auth /etc/pam.d/system-auth

