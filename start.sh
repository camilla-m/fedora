#!/bin/bash

cp .vimrc ~/.vimrc

sudo yum groupinstall 'Development Tools'

sudo yum install curl file git

sudo yum install libxcrypt-compat

git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew

mkdir ~/.linuxbrew/bin

ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin

eval $(~/.linuxbrew/bin/brew shellenv)

brew install gh

brew install aws-vault

sudo dnf -y install dnf-plugins-core

curl https://download.docker.com/linux/fedora/33/x86_64/stable/Packages/docker-ce-20.10.2-3.fc33.x86_64.rpm -o docker-ce.rpm

sudo dnf -y install docker-ce.rpm

curl https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code-1.50.1-1602601064.el7.x86_64.rpm -o code.rpm

sudo dnf install code.rpm

sudo dnf install snapd

sudo ln -s /var/lib/snapd/snap /snap

sudo snap install authy --beta

sudo yum install zsh

echo 'exec zsh' >> ~/.bashrc

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

rm -rf aws
rm -f awscliv2.zip

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo dnf install -y nodejs npm

sudo npm install -g nvm

sudo dnf install xclip xsel

sudo dnf install -y dnf-plugins-core && \
    sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo && \
    sudo dnf -y install packer
    
sudo dnf install ansible
