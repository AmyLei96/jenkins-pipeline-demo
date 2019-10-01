#!/bin/bash


# out file
resfile=res.txt
# talend out files
FILES=talend_jobs/*
# mapreduce out file
mr=mr_out.txt

# count lines in out files
for f in $FILES
do 
	count=$(wc -l < $f)

	if [ $count -eq "$(wc -l < $mr)" ]
	then echo "Data Validation for $f: Pass" >> $resfile
	else echo "Data Validation for $f: Fail; Number of records do not match"
	fi
done






