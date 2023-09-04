#!/bin/bash

# Ask the user for a command
echo "Enter a command:"
read command

# Download the manual page from man7.org
wget "http://man7.org/linux/man-pages/man1/$command.1.html" -O manpage.html

# Print the manual page
cat manpage.html
