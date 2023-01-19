#!/bin/bash
sudo yum -y update
sudo yum install -y httpd
sudo chkconfig httpd on
sudo cp /tmp/index.html /var/www/html/index.html
sudo /etc/init.d/httpd start
