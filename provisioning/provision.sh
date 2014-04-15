#!/bin/bash

# We don't want to be asked about service restarts
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y install software-properties-common 
apt-get -y install mono-complete mono-devel
# Dependencies to build fsharp
apt-get -y install git autoconf automake make intltool 
# Nginx
apt-get -y install nginx 
# Monoserver
apt-get -y install mono-fastcgi-server4
# Add a gui
apt-get -y install xfce4

exit 0
