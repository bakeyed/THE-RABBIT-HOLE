#!/bin/sh

# Generate SSH host keys if not already generated
ssh-keygen -A

# Start the SSH daemon
/usr/sbin/sshd -D
