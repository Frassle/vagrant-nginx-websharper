#!/bin/bash

cp /vagrant/provisioning/nginx/sites-available/default /etc/nginx/sites-available/default
cp /vagrant/provisioning/nginx/fastcgi_params /etc/nginx/fastcgi_params

mkdir /etc/init.d/mono-fastcgi
cp /vagrant/provisioning/localhost.webapp /etc/init.d/mono-fastcgi/localhost.webapp

mkdir -p /var/log/mono
touch /var/log/mono/fastcgi.log

fastcgi-mono-server4 --appconfigdir /etc/init.d/mono-fastcgi /socket=tcp:127.0.0.1:9000 /logfile=/var/log/mono/fastcgi.log &

service nginx restart
