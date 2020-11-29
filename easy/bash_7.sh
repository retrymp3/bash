#!/bin/bash

#bash_1
arithmetic () {
echo "Give a number: "
read number1
echo "Give another number: "
read number2

echo "`expr $number1 + $number2`"
echo "`expr $number1 - $number2`"
echo "`expr $number1 \* $number2`"
echo "`expr $number1 / $number2`"
echo "`expr $number1 % $number2`"

}

#bash_2
factorial () {
echo "Give a number: "
read n

var=1

while [ $n -gt 1 ]
do
	var=`expr $var \* $n`
	n=`expr $n - 1`
done

echo $var

}

#bash_3
persistence () {
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

}

#bash_4
len_of_string () {
echo Give a string: 
read n

echo "`expr length $n`"

}

#bash_5
palindrome () {
read -p "Enter a string: " s

if [ "$s" == "$(echo "$s" | rev)" ]
then
	echo "Is a palindrome"

else
	echo "Not a palindrome"
fi

}

#bash_6
odd_or_even () {
read -p "Enter a number: " n

if [ "$(expr $n % 2 )" == "0" ]
then
	echo "Given number is even"
	
elif [ "$(expr $n % 2 )" == "1" ]
then
	echo "Given number is odd"
fi
}

arithmetic
factorial
persistence
len_of_string
palindrome
odd_or_even



