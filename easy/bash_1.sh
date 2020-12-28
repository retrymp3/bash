#!/bin/bash

read -p "Give a number: " number1
read -p "Give a another number: " number2

expr $number1 + $number2 #Add
expr $number1 - $number2 #Sub
expr $number1 \* $number2 #Multiply
expr $number1 / $number2 #Division
expr $number1 % $number2 #Modulus
