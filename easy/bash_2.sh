#!/bin/bash

echo "Give a number: "
read n

var=1

while [ $n -gt 1 ]
do
	var=$(($var * $n))
	n=$((n-1))
done

echo $var
