#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############

myname=$USER
hostname=$(hostname)
hours=$(date +%H)
min=$(date +%M)
meridian=$(date +%p)
day=$(date +%A)

[ $day == "Monday" ] && title="Lord of Dragons"
[ $day == "Tuesday" ] && title="Almighty Powerful"
[ $day == "Wednesday" ] && title="The Greatest Artist Ever"
[ $day == "Thursday" ] && title="Detective"
[ $day == "Friday" ] && title="Product Tester"
[ $day == "Saturday" ] && title="IT Technician"
[ $day == "Sunday" ] && title="Amazing"

###############
# Main        #
###############
cat <<EOF

Welcome to Planet $hostname, "$title $myname!"
Today is $day and the time is $hours:$min $meridian.

EOF