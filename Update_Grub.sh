#!/bin/bash
#Author: Aaron Long

#Create a schedule system check and update of Red Hat Enterprise Linux with cron.

#Create a backup of the crontab file.

sudo cp /etc/crontab /etc/crontab.bak

#Create a new crontab file.

sudo touch /etc/crontab

#Add the following lines to the crontab file.

echo "0 0 * * 0 root /home/student/scripts/Check_Update_Remove_Packages.sh" | sudo tee -a /etc/crontab

echo "0 0 * * 0 root /home/student/scripts/Update_RHEL.sh" | sudo tee -a /etc/crontab

#Wait for user input to continue

read -p "Press [Enter] key to continue..." fackEnterKey

#Check the crontab file.

cat /etc/crontab

#Wait for user input to continue

read -p "Press [Enter] key to continue..." fackEnterKey

#Check the crontab file.

sudo crontab -l

#Wait for user input to continue

read -p "Press [Enter] key to continue..." fackEnterKey


