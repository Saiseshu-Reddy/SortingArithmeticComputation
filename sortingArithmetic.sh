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

array[((count++))]=${res[1]}	#Saving the results in dictionary into array
array[((count++))]=${res[2]}
array[((count++))]=${res[3]}
array[((count++))]=${res[4]}
echo -ne "\n Index Numbers : ${!array[@]}"

echo -ne "\n Index Numbers : ${array[@]}

for ((i = 0; i<4-1; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${array[$j]} -lt ${array[$((j+1))]} ]
        then
            # swap code to sort the array
            temp=${array[j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done
for ((i=0; i<4; i++))
do
	array2[((count2++))]=${array[i]}
done
echo "sorted array is ${array2[@]}"
