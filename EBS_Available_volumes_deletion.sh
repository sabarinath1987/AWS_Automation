#!/bin/bash
#copy paste all available volumes list to the file called ebs_available.txt and execute the script.
AWS_ACCOUNT_ID=YOUR AWS ACCOUNT ID
AWS_SECRET_ACCESS_KEY=YOUR SECRET KEY
AWS_ACCESS_KEY_ID=YOUR ACCESS KEY
while IFS= read -r line
do
  ec2-delete-volume $line
done < "ebs_available.txt"