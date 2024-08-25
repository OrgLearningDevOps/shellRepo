#!/bin/bash

array=('apple' 'mango' 'banana' 'kiwi')

for i in ${array[@]};
do
	echo "fruit is: $i"
done

