#!/bin/bash

now=$(date "+%Y-%m-%d %H:%M:%S.%N")

echo "The system time and date is:"

echo $now 
#read greets.sh file 

echo "This is the content of myscript.sh file "

cat myscript.sh

echo "This is the content of greets.sh file "

cat greets.sh

date "+%Y-%m-%d %H:%M:%S.%N"
