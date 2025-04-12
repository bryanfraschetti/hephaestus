#!/bin/bash
# Unilateral proxying through my home LAN
alias lanvpn="sshuttle -r <user>@<my-domain>:<port> 0.0.0.0/0"
# Selective proxying that only includes VM subnets on my homelab
alias lanvms="sshuttle -r <user>@<my-domain>:<port> 192.168.57.0/24 192.168.56.0/24"
