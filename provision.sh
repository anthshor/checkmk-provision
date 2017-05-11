#!/bin/bash

rpm -Uvh /u01/software/epel-release-6-8.noarch.rpm
yum update -y
yum install /u01/software/check-mk-raw-1.2.6p16-el6-34.x86_64.rpm -y

yum install nagios -y

omd create mysite
omd start mysite
omd status mysite

service httpd start
service nagios start

yum install /u01/software/check-mk-agent-1.2.6p16-1.noarch.rpm -y
