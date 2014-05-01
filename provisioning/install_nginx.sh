#!/bin/bash

cp /vagrant/provisioning/nginx/sites-available/default /etc/nginx/sites-available/default
cp /vagrant/provisioning/nginx/fastcgi_params /etc/nginx/fastcgi_params

mkdir /etc/fastcgi-mono-server
cp /vagrant/provisioning/localhost.webapp /etc/fastcgi-mono-server/localhost.webapp
chmod -R a+r /etc/fastcgi-mono-server

mkdir -p /var/log/mono
touch /var/log/mono/fastcgi.log
chmod -R a+rw /var/log/mono

cp /vagrant/provisioning/fastcgi-mono-server.conf /etc/init/fastcgi-mono-server.conf

service fastcgi-mono-server start
service nginx restart
