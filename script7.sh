#! /bin/bash

dir=/etc/*
outFile="emails.lst"
echo > $outFile

for file in $dir
do
    if [ -f "$file" ]
    then
        email=$(cat $file | grep -Eo "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b")

        if [[ $email != "" ]]
        then
            echo -n "$email, " >> $outFile
        fi
    fi
done