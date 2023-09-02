#!/bin/bash

# Run test.py and capture its output in the variable mynum
mynum=$(python3 test.py)

if [ "$mynum" -eq 200 ] && [ "$mynum" = "success" ]; then
    echo "The condition is true and the output is 'success'."
elif [ "$mynum" -eq 500 ]; then 
    echo "The condition is 500."
else
    echo "The condition is neither 200 nor 500, or the output is not 'success'."
    echo "The output is:  $mynum"
fi
