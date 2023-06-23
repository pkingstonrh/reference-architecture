#!/bin/sh
cd /runner/reference-architecture
az login
ansible-playbook destroy.yml
