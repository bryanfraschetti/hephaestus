#!/usr/bin/expect -f
spawn ssh-add <ssh-key-path>
expect "Enter passphrase for <ssh-key-path>:"
send "<ssh-key-pw>\n";
alias dtproxy="sshuttle -r bryan@192.168.2.238:22 0.0.0.0/0"
expect "Identity added: <ssh-key-path> (<ssh-key-path>)"
