#!/bin/bash

sudo apt-get install openssh-server
sudo systemctl start sshd
sudo systemctl enable sshd

# sudo vi /etc/ssh/sshd_config
# PubkeyAuthentication yes
# PermitRootLogin yes


# After configured, run systemctl restart sshd
