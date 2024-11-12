#!/bin/bash

################
##
Author: Shahnawaz
Date: 13/11/2024
Version: v1
##
## This script will report the AWS resource usage
################

# AWS EC2
# AWS S3
# AWS IAM Users
# AWS Lambda

set -x #debug mode

# List S3 buckets
echo 'Print list of S3 buckets'
aws s3 ls > resourceTracker

# List EC2 Instances
echo 'Print list of EC2 Instances'
aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker

# List AWS Lambda Functions
echo 'Print list of Lambda Functions'
aws lambda list-functions > resourceTracker

# List IAM Users
echo 'Print list of IAM Users'
aws iam list-users > resourceTracker