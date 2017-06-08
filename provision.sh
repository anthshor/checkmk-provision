#!/bin/bash

pushd /u01/software
[ -f /u01/software/epel-release-6-8.noarch.rpm ] || wget https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
[ -f /u01/sofware/check-mk-raw-1.2.8p23-el6-46.x86_64.rpm ] || wget https://mathias-kettner.de/support/1.2.8p23/check-mk-raw-1.2.8p23-el6-46.x86_64.rpm
popd

rpm -Uvh /u01/software/epel-release-6-8.noarch.rpm
##yum update -y
yum install /u01/software/check-mk-raw-1.2.8p23-el6-46.x86_64.rpm -y

yum install nagios -y

omd create mysite
omd start mysite
omd status mysite

service httpd start
service nagios start

yum install /opt/omd/versions/1.2.8p23.cre/share/check_mk/agents/check-mk-agent-1.2.8p23-1.noarch.rpm -y

# Copy for transfer later
cp /opt/omd/versions/1.2.8p23.cre/share/check_mk/agents/check-mk-agent-1.2.8p23-1.noarch.rpm /u01/software
