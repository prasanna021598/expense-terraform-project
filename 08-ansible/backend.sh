#!/bin/bash
component=$1
dnf install ansible -y
pip3.9 install botocore boto3
dnf install dos2unix -y
git clone https://github.com/prasanna021598/ansible-roles.git
sleep 5
cd ansible-roles
git pull
ansible-playbook backend.yaml
echo "configuration of backed is done"
ansible-playbook frontend.yaml