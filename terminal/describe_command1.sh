#!/bin/bash

# Get the command from the user
command=$1

# Fetch the man page content
man_page_content=$(curl -s "https://linux.die.net/man/1/$command")

# Debug: Print the raw man page content
echo "Raw Man Page Content:"
echo "$man_page_content"

# Extract the short description using grep and sed
short_description=$(echo "$man_page_content" | grep -m 1 -o "<p>.*</p>" | sed 's/<[^>]*>//g')

# Debug: Print the extracted short description
echo "Short Description:"
echo "$short_description"

# Print the short description to the terminal
echo "$short_description"
