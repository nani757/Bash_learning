#!/bin/bash

# Get the command from the user
command=$1

# Get the description of the command from the internet
description=$(curl -s https://linux.die.net/man/1/$command)

# Get the short description of the command
short_description=$(head -n 2 "$description")

# Print the short description to the terminal
echo "$short_description"
