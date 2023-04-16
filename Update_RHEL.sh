#!/bin/bash
#Author: Aaron Long
#Check current version and kernel of Red Hat Enterprise Linux.

echo "Current version of Red Hat Enterprise Linux is: "
cat /etc/redhat-release
echo "Current kernel of Red Hat Enterprise Linux is: "
uname -r

#Wait for user input to continue

read -p "Press [Enter] key to continue..." fackEnterKey

#Update and upgrade Red Hat Enterprise Linux.

sudo yum update -y

#Wait for user input to continue

read -p "Press [Enter] key to continue..." fackEnterKey

#Update kernel on Red Hat Enterprise Linux.

sudo yum install kernel -y

#Wait for user input to continue

read -p "Press [Enter] key to continue..." fackEnterKey

#Check current version and kernel of Red Hat Enterprise Linux.

echo "Current version of Red Hat Enterprise Linux is: "

cat /etc/redhat-release

echo "Current kernel of Red Hat Enterprise Linux is: "

uname -r
