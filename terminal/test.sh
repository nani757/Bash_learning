#!/bin/bash

echo "Enter a command:"
read command

description=$(curl -s "https://www.computerhope.com/unix/ubash.htm" | grep -A 1 "$command" | tail -n 1)

echo "$description"
