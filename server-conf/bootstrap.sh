#!/usr/bin/env bash

yum update -y
yum upgrade -y 

yum install kernel.x86_64 kernel-devel.x86_64 -y
yum install nano -y
yum install httpd -y

rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
yum install php55w php55w-opcache php55w-soap php55w-intl php55w-pecl-xdebug php55w-pgsql php55w-xml php55w-xmlrpc -y