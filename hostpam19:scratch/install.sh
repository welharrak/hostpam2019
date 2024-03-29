#! /bin/bash
useradd local1
useradd local2
useradd local3
echo "local1" | passwd --stdin local1
echo "local2" | passwd --stdin local2
echo "local3" | passwd --stdin local3
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
#athconfig per poder-nos autenticar com usuaris ldap
authconfig --enableshadow --enablelocauthorize --enableldap --enableldapauth --ldapserver='ldapserver' --ldapbase='dc=edt,dc=org' --enablemkhomedir --updateall
