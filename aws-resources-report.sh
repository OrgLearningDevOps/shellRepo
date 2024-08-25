#!/bin/bash

##########################
#Author: Bimal Sharma
#Date: 20th Aug 2024
#Version: v1
#Script: Check AWS resources
##########################


# list aws s3 bucket
echo "list S3 bucket"
aws s3 ls

# list EC2 instances
echo "list ec2 instances"
aws ec2 describe-instances

# list lamda services
echo "list lambda services"
aws lambda list-functions

# list AWS IAM users
echo "list IAM users"
aws iam list-users





