# RaspberryPi-Ansible-Bakery
Bootstrap Raspberry Pi using Ansible and PiBakery.

These files should allow you to bootstrap your Pi using PiBakery and Ansible.  PiBakery should lay down the OS and prepare it to connect to Ansible.  Ansible will then run on the Pi and join it to an Active Directory domain.

# PiBakery
The PiBakery directory contains the PiBakery XML file as a template for prepping your pi.  Change the wifi and hostname settings to match your environment. The ansible.sh file preps your system for ansible to run after the pi joins your network.  Change the username and public key to match your ansible infrastructure.
