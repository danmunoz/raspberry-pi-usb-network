#!/bin/sh

# Install ansible packages or update them

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml
