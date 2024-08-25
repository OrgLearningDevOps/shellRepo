#!/bin/bash

echo "enter the word:"
read word
echo "enter the letter to check the count occurence:"
read letter

#First way to do it

#echo "number of occurence of letter $letter in word $word is:" 
#echo $word | awk -F"$letter" '{print NF-1}'

#Second way todo it

grep -o "$letter" <<<"$word" | wc -l


