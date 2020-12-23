#!/bin/bash

echo "Welcome to Sorting Arithmetic Computation Program"
echo -ne "\n"

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo "The Taken Inputs Are $a $b $c"

p=$(( a+(b*c) ))
q=$(( (a*b)+c ))
r=$(( c+(a/b) ))
s=$(( a%(b/c) ))

echo "The Result is" $p
echo "The Result is" $q
echo "The Result is" $r
echo "The result is" $s

declare -A res	#saving results in a dictionary

res[0]=$p
res[1]=$q
res[2]=$r
res[3]=$s

echo "Index Numbers : ${!res[@]}"
echo "Index Numbers : ${res[@]}"
