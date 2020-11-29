#!/bin/bash

read -p "Enter a string: " s

if [ "$s" == "$(echo "$s" | rev)" ]
then
	echo "Is a palindrome"

else
	echo "Not a palindrome"
fi
