#!/bin/bash

# Run test.py and capture its output in the variable mynum
mynum=$(python3 test.py)

if [ "$mynum" -eq 200 ]; then
    echo "The condition is true."
elif [ "$mynum" -eq 500 ];then 
    echo "The condition is 500"
else
    echo "The condition  is neither 200 ner 500"
fi
