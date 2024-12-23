#!/bin/bash

# Prompt for user input
read -p "Enter RDP server IP address: " server_ip
read -p "Enter username: " username
read -sp "Enter password: " password
echo

# Construct the RDP command
rdp_command="xfreerdp /u:$username /p:$password /v:$server_ip /smart-sizing /drive:share,."

# Execute the RDP command
echo "Connecting to $server_ip with username $username..."
$rdp_command
