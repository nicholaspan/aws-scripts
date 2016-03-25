#!/bin/bash

<<<<<<< HEAD
if [ ! $# == 1 ]; then
  echo "Usage $0 bucket_name region_code."
else
  aws s3 rm s3://$1 --recursive
  aws s3 rb s3://$1
=======
if [ $# == 2 ]; then

  aws s3 rm s3://$1 --recursive --region $2
  aws s3 rb s3://$1 --region $2

elif [ $# == 1 ]; then

  aws s3 rm s3://$1 --recursive
  aws s3 rb s3://$1

else

  echo "Usage $0 bucket_name region_code."

>>>>>>> 07ed41abaa04a6a8a854bf22e840c89fdf51094a
fi
