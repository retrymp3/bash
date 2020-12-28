#!/bin/bash

read -p "Give a number: " n

var=1

while [ $n -gt 1 ]
do
	var=`expr $var \* $n`
	n=`expr $n - 1`
done

echo $var
