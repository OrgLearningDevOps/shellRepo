#!/bin/bash

set -e

echo "enter number to check for odd or even"
read num

if [ $((num%2)) -eq 0 ]
then
	echo "your number $num is even"
else
	echo "your number $num is odd"
fi

