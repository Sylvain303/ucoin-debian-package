#!/bin/bash
#
# bootstrap for initialize a new OS debian for building.
#
# Helpfull to replay the building process.
#

echo "this is not a valid script yet, DONOT RUN!"
exit 1

# allow ssh root login
vim /etc/ssh/sshd_config

install-keymap dvorak-fr-bepo
vim /etc/locale.gen
dpkg-reconfigure console-data
locale-gen

apt-get update
apt-get upgrade
reboot && exit
adduser ucoin
adduser sylvain
apt-get install vim git sudo build-essential debhelper dh-make fakeroot lintian patchutils

ssh-copy-id -i id root@debian-for-build


su - sylvain
git clone https://github.com/Sylvain303/ucoin-debian-package.git

git config --global user.email "you@example.com"
git config --global user.name "Your Name"
export EDITOR=vim
git clone vimrc
