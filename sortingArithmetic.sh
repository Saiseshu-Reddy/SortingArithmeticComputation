#!/bin/bash

echo "Welcome to Sorting Arithmetic Computation Program"
echo -ne "\n"

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo "The Taken Inputs Are $a $b $c"

p=$(( a+(b*c) ))

echo "The Result is" $p
