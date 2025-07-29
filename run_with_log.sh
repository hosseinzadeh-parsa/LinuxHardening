#!/bin/bash
ansible-playbook playbooks/hardening.yml -i inventory/hosts.yml | tee playbook-output.log
