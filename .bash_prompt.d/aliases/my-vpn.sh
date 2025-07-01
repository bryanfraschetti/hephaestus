#!/bin/bash
alias lanvpn="sshuttle -r user@mydomain.tld:port 0.0.0.0/0"
alias lanvms="sshuttle -r user@mydomain.tld:port 192.168.57.0/24 192.168.56.0/24"
alias dtproxy="sshuttle -r user@192.168.2.238:22 0.0.0.0/0"
alias dt="ssh -p port user@mydomain.tld"
