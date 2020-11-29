#!/bin/bash

for x in $(find / -name persistance 2>/dev/null)
do
	if [ -f "$x" ]
	then
	s=1
	
	else
	s=2
	fi
done

if [ "$s" == "1" ]
then
	echo "it exists"
	
else
	echo "it doesn't exists"
fi


