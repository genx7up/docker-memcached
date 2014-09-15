#!/bin/bash

#Build
echo "%_topdir /home/you/rpmbuild" >> ~/.rpmmacros
mkdir -p /home/you/rpmbuild/{SPECS,BUILD,SRPMS,RPMS,SOURCES}
rpmbuild -ta memcached-1.4.20.tar.gz

#Copy the new binary to shared volume
cp /home/you/rpmbuild/RPMS/x86_64/memcached-1.4.20-1.el6.x86_64.rpm /data/
