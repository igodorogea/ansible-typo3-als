#!/usr/bin/env bash

if [[ ! -f /root/.ssh/id_rsa ]]; then
  mkdir -p /root/.ssh
  cp /tmp/my-keys/als.pem /root/.ssh/id_rsa
  chmod 400 /root/.ssh/id_rsa
fi

if [[ ! -f /root/.ssh/config ]]; then
  touch /root/.ssh/config
  chmod 400 /root/.ssh/config
  echo -e "Host *\n    StrictHostKeyChecking no" > /root/.ssh/config
fi

if [[ ! `which rsync` ]]; then
    apt update -y
    apt install -y rsync
    rsync --version
fi

ansible-playbook -i provisioning/inventory/dev provisioning/playbook.yml

#ansible -i inventory/dev als -m yum_repository -a "name=nginx state=absent" --sudo
#ansible -i inventory/dev als -m setup

#tail -f /dev/null
