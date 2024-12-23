#!/bin/bash

# Ensure smbclient is installed
if ! command -v smbclient &> /dev/null; then
    echo "smbclient is not installed. Please install it first."
    exit 1
fi

# Prompt for user input
read -p "Enter the IP address of the Windows server: " server_ip
read -p "Enter the share name (e.g., sharename): " share_name
read -p "Enter the username: " username
read -sp "Enter the password: " password
echo

# Construct the smbclient command
smbclient_command="smbclient //${server_ip}/${share_name} -U ${username}%${password}"

# Execute the smbclient command
echo "Connecting to the share..."
$smbclient_command
