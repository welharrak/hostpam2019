#! /bin/bash
useradd anna
useradd walid
echo "anna" | passwd --stdin anna
echo "walid" | passwd --stdin walid
cp /opt/docker/login.defs /etc/login.defs
cp /opt/docker/chfn /etc/pam.d/chfn
tar xvzf pam-python-1.0.7.tar.gz
rm -rf rm -rf pam-python-1.0.7.tar.gz 
cp /opt/docker/features.h /usr/include/features.h 
make --directory /opt/docker/pam-python-1.0.7/src/
cp /opt/docker/pam-python-1.0.7/src/pam_python.so /usr/lib64/security/.


