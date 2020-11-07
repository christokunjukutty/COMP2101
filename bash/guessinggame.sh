#!/bin/bash
#
# This script implements a guessing game
# it will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number
#    until the user gets it right

# Give the user instructions for the game
cat <<EOF
Let's play a game.
I will pick a secret number from 1 to 10 and you have to guess it.
If you get it right, you get a virtual prize.
Here we go!

EOF

# Pick the secret number and save it
secretnumber=$(($RANDOM % 10 +1)) # save our secret number to compare later
guess=0
# This loop repeatedly asks the user to guess and tells them if they got the right answer
# TASK 1: Test the user input to make sure it is not blank
# TASK 2: Test the user input to make sure it is a number from 1 to 10 inclusive
# TASK 3: Tell the user if their guess is too low, or too high after each incorrect guess
while [ $guess != $secretnumber ]; do # loop around until they get it right
  read -p "pick a number between 1 and 10:" guess # ask for a guess
  if [ $guess -eq $secretnumber ]; then
    echo "you got it"
    #exit
  fi
  if [ $guess -gt $secretnumber ]; then
    echo "too high"
  elif [ $guess -lt $secretnumber ]; then
    echo "too low"
  fi
done
