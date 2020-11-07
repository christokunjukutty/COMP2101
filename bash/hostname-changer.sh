#!/bin/bash
#
# This script is for the bash lab on variables, dynamic data, and user input
# Download the script, do the tasks described in the comments
# Test your script, run it on the production server, screenshot that
# Send your script to your github repo, and submit the URL with
# screenshot on Blackboard

# Get the current hostname using the hostname command and save
# it in a variable

# Tell the user what the current hostname is in a human friendly way

# Ask for the user's student number using the read command

# Use that to save the desired hostname of pcNNNNNNNNNN in a variable,
# where NNNNNNNNN is the student number entered by the user

# If that hostname is not already in the /etc/hosts file, change the
# old hostname in that file to the new name using sed or something similar and
#     tell the user you did that
#e.g. sed -i "s/$oldname/$newname/" /etc/hosts

# If that hostname is not the current hostname, change it using the
# hostnamectl command and
#     tell the user you changed the current hostname and they should
# reboot to make sure the new name takes full effect
#e.g. hostnamectl set-hostname $newname

hostname=$(hostname)
echo "The current hostname is $hostname"
read -p "Enter your student number" stdnum
string="pc"
newhost=$string${stdnum}
echo "The new hostname is $newhost"
if sudo grep -Fxq $newhost /etc/host; then
  echo "The hostname is currently in use"
else
  sudo sed -i "s/$hostname/$newhost/" /etc/hosts
fi
sudo hostnamectl set-hostname $newhost
echo "The hostname has been changed to $newhost.
Please reboot to confirm the changes"
