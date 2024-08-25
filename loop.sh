#!/bin/bash

: '
x=1

echo "enter number"
read number

while [ $x -le $number ];
do
	echo "Welcome $x times"
	((x++))
done	
'


echo "enter number"
read x

for (( i=0; i<=$x; i++ ))
do
	echo "Welcome $i times"
done



