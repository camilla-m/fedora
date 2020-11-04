#!/bin/bash

sudo dnf -y install dnf-plugins-core

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
 
sudo dnf install docker-ce docker-ce-cli containerd.io

curl https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code-1.50.1-1602601064.el7.x86_64.rpm -o code.rpm
sudo dnf install code.rpm

sudo dnf install snapd

sudo ln -s /var/lib/snapd/snap /snap

sudo snap install authy --beta