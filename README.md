# RaspberryPi-Ansible-Bakery
Bootstrap Raspberry Pi using Ansible and PiBakery.

These files should allow you to bootstrap your Pi using PiBakery and Ansible.  PiBakery should lay down the OS and prepare it to connect to Ansible.  Ansible will then run on the Pi and join it to an Active Directory domain.

# PiBakery
The PiBakery directory contains the PiBakery XML file as a template for prepping your pi.  Change the wifi and hostname settings to match your environment. The ansible.sh file preps your system for ansible to run after the pi joins your network.  Change the username and public key to match your ansible infrastructure.

# Ansible
The ansible directory contians a complete setup for joining a Raspberry Pi to an Active Directory domain.  Most of the config will actually work well for joining any Debian based computer to an Active Directory domain.

# Your Environment
To customize this to work for your environment, check out the Ansible/roles/raspi_deploy/vars/vars.yml file.  That contains the variables you can change for your environment.  You can pull the username and password out of there and put it in your ansible vault if you like.
