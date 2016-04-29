#!/bin/bash
AWS_ACCOUNT_ID=YOUR AWS ACCOUNT ID
AWS_SECRET_ACCESS_KEY=YOUR SECRET KEY
AWS_ACCESS_KEY_ID=YOUR ACCESS KEY
logfile="mail.txt"
csv="ebs_available.csv"
dat=`date +%d-%m-%Y`
echo "EBS Available Volumes Report on $dat" >> $logfile
echo "TYPE      Volume-id       Size(GB)        Snapshot-id     Region  Status  CreationDate    VolumeType" >> file.txt
ec2-describe-volumes | grep available >> file.txt
sed 's/\t/,/g' file.txt > $csv
mail -s "EBS Available Volumes Report on $dat" -a $csv you@gmail.com < $logfile
> $logfile
> ebs_available.csv
> file.txt
