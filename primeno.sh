#!/bin/bash

for i in {1..100};
do

# any of the below if condition works well

#if ([ `expr $i % 3` == 0 ]  || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
if [ $((i % 3)) -eq 0 ] || [ $((i % 5)) -eq 0 ] && [ $((i % 15)) -ne 0 ];
then 
	echo $i
fi;

done






