#!/bin/bash

# Update all packages that have available updates.
sudo yum update -y

# Install Python 3 and pip.
sudo yum install -y python3-pip

# Install Ansible.
pip3 install ansible[azure] --user

# Install Ansible modules and plugins for interacting with Azure.
ansible-galaxy collection install azure.azcollection

# Install required modules for Ansible on Azure
wget https://raw.githubusercontent.com/fbobes-gcs/azure-devops-files/main/requirements-azure.txt

# Install Ansible modules
sudo pip3 install -r requirements-azure.txt
