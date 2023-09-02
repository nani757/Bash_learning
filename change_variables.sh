#!/bin/bash

# Define a variable containing the text
text="Linux is test.py
Videogames are test.py
Sunny days are test.py"

# Read the content of test.py and substitute it into the text
text="${text//test.py/$(<test.py)}"

# Print the modified text
echo "$text"
