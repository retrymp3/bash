#!/bin/bash

echo "Give a number: "
read number1
echo "Give another number: "
read number2

echo "`expr $number1 + $number2`"
echo "`expr $number1 - $number2`"
echo "`expr $number1 \* $number2`"
echo "`expr $number1 / $number2`"
echo "`expr $number1 % $number2`"
