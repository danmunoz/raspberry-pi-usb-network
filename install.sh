#!/bin/sh

# Install ansible packages or update them

sudo apt update && sudo apt install -y python3-dev python3-pip libyaml-dev libffi-dev git && sudo pip3 install --no-binary pyyaml ansible
ansible-galaxy install -r requirements.yml
ansible-galaxy collection install ./rafaelktistakis
ansible-playbook main.yml
