#!/bin/bash


##################################
#Author : Bimal Sharma
#Date: 18 Aug 2024
#
#This Script checks the health of a system
#
#################################


#set -x #puts script command in a debug mode
set -e #any failure will exit the code
set -o pipefail #considers pipe failure or error

: '
echo "I want to sleep for 10 secs"
sleep 10
echo "I want to sleep more.."
sleep 10
echo "Now I am done"
'

: '
df -h

free

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'
'

echo "Enter your name"
read name
echo "Enter your age"
read age

if [ $age -ge 40 ];
then
	echo "$name you are OLD.."
else
	echo "$name you are YOUNG.."
fi






