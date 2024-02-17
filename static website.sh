#!/bin/bash
sudo su
yum update -y
yum install -y httpd 
cd  /var/www/html
wget https://github.com/taofeeklanre/static-website-Repository/raw/main/Speed%20Free%20Cycle.zip
unzip Speed\ Free\ Cycle.zip 
cp -r /var/www/html/speed/* /var/www/html
cd /var/www/html
rm -rf Speed\ Free\ Cycle.zip
systemctl enable httpd
systemctl start httpd