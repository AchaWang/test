#!/bin/bash
apk update
apk add openssh vim curl wget bash sudo openrc tmux git
cat /dev/location > /dev/null &
# auto-setup-ssh
#— install the ssh tools and the ssh server.
apk add openssh -y
#— create the host keys.
ssh-keygen -A
# — Set a password for root to protect your iOS device
passwd
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
echo 'PasswordAuthentication  yes' >> /etc/ssh/sshd_config
echo 'Port 22' >> /etc/ssh/sshd_config
/usr/sbin/sshd
echo 'ssh setup done !'
rc-update add sshd
service sshd start
exit 0
