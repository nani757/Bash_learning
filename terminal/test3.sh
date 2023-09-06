#!/bin/bash

# Prompt the user for a command
read -p "Enter a command: " user_command

# Check internet connectivity
if ping -q -c 1 -W 1 google.com &>/dev/null; then
    # If connected, fetch information about the command
    fetched_info=$(curl -s "https://www.google.com/search?q=$user_command")

    # Parse and display information
    if [[ -n "$fetched_info" ]]; then
        echo "Description for $user_command:"
        echo "$fetched_info"
    else
        echo "No information found for $user_command."
    fi
else
    echo "No internet connection."
fi
