#!/usr/bin/env bash

if ! type ansible-playbook > /dev/null; then
  sudo apt-add-repository ppa:ansible/ansible -y
  sudo apt update
  sudo DEBIAN_FRONTEND=noninteractive apt-get install ansible -y
fi

if [ ! -d "./aws-lemp-ubuntu" ]; then
  git clone https://github.com/igodorogea/aws-lemp-ubuntu.git
fi

ansible-playbook -i "localhost," -c local aws-lemp-ubuntu/provisioning/playbook.yml
