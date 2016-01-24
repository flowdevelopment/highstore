#!/usr/bin/env bash

# update yum registry
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

yum update -y
yum upgrade -y

# update kernel
yum install kernel.x86_64 kernel-devel.x86_64 -y

# install apache
yum install httpd -y

# install composer globally
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# install php 5.6 and Magento CE environment dependencies
yum install -y php56w php56w-opcache php56w-xml php56w-mcrypt php56w-gd php56w-devel php56w-mysql php56w-intl php56w-mbstring
