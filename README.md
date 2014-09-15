docker-memcached
================

To build,
docker build --rm=true -t="memcached" .
docker run -v /docker/data/temp:/data --name temp -it memcached /bin/bash
bash /run.sh

To install,
yum -y install perl libevent
rpm -Uvh /data/memcached-1.4.20-1.el6.x86_64.rpm

To test,
yum -y install nc
service memcached start
echo stats | nc 127.0.0.1 11211
