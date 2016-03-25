#!/bin/bash

if [ $# == 2 ]; then

  aws s3 rm s3://$1 --recursive --region $2
  aws s3 rb s3://$1 --region $2

elif [ $# == 1 ]; then

  aws s3 rm s3://$1 --recursive
  aws s3 rb s3://$1

else

  echo "Usage $0 bucket_name region_code."

fi
