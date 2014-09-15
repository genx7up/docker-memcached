FROM nclans/centos:latest

#Install Requisites
RUN yum -y install gcc wget libevent-devel perl-Test-Harness perl-Test-Simple rpm-build

#Build Source
WORKDIR /opt
RUN wget http://memcached.org/latest
RUN mv latest memcached-1.4.20.tar.gz

# Define default run command.
ADD run.sh /run.sh
CMD ["bash", "/run.sh"]
