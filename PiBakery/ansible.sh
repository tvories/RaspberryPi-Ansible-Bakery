#!/bin/bash

ANSIBLE_USER = "ansible"
ANSIBLE_USER_PUBKEY_URL = "http://location-of-your-ansible-public-key.com/pubkey.pub"

# Create ansible user account
sudo adduser --disabled-password --gecos "" $ANSIBLE_USER

# Add ssh key
sudo mkdir -p /home/$ANSIBLE_USER/.ssh
sudo wget $ANSIBLE_USER_PUBKEY_URL -O /home/$ANSIBLE_USER/.ssh/authorized_keys
sudo chmod 0600 /home/$ANSIBLE_USER/.ssh/authorized_keys
sudo chown -R $ANSIBLE_USER:$ANSIBLE_USER /home/$ANSIBLE_USER/.ssh

# Add to sudoers
sudo bash -c 'echo "$ANSIBLE_USER ALL=NOPASSWD:ALL" > /etc/sudoers.d/$ANSIBLE_USER'
