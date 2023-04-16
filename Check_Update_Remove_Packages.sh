#!/bin/bash
#Author: Aaron Long

#Provide user with options to check, update, or remove a specific package.

echo "Please select an option: "

echo "1. Check for a package."

echo "2. Update a package."

echo "3. Remove a package."

echo "4. Exit."

read -p "Enter your choice: " choice

case $choice in

1) echo "Please enter the name of the package you would like to check: "

read package

rpm -q $package

;;

2) echo "Please enter the name of the package you would like to update: "

read package

sudo yum update $package -y

;;

3) echo "Please enter the name of the package you would like to remove: "

read package

sudo yum remove $package -y

;;

4) echo "Exiting..."

exit

;;

*) echo "Invalid choice. Please try again."

;;

esac

#Wait for user input to continue

read -p "Press [Enter] key to continue..." fackEnterKey

