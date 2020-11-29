#!/bin/bash

read -p "Enter a number: " n

if [ "$(expr $n % 2 )" == "0" ]
then
	echo "Given number is even"
	
elif [ "$(expr $n % 2 )" == "1" ]
then
	echo "Given number is odd"
fi








