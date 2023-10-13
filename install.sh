#!/bin/sh
ansible-galaxy install -r requirements.yml
ansible-playbook -v main.yml 
