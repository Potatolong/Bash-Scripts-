#!/bin/bash

# Prompt for user input
read -p "Enter the IP address or hostname of the SSH server: " server_ip
read -p "Enter the username: " username

# Construct the SSH command
ssh_command="ssh $username@$server_ip"

# Execute the SSH command
echo "Connecting to $server_ip as $username..."
$ssh_command
