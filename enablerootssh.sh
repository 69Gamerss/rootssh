#!/bin/bash



# Path to the SSH configuration file

SSHD_CONFIG="/etc/ssh/sshd_config"



# Backup the current SSH configuration file

cp $SSHD_CONFIG $SSHD_CONFIG.bak



# Enable root login by modifying the 'PermitRootLogin' directive

sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' $SSHD_CONFIG

sed -i 's/^PermitRootLogin.*/PermitRootLogin yes/' $SSHD_CONFIG



# Reload the SSH service to apply the changes

systemctl reload sshd



echo "Root login via SSH has been enabled."
