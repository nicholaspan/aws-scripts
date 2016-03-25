#!/bin/bash
if [ ! $# == 1 ]; then
  echo "Usage $0 bucket_name region_code."
else
  aws s3 rm s3://$1 --recursive
  aws s3 rb s3://$1
fi
