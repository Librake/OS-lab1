#! /bin/bash

echo > info.log

IFS=$'\n'
file="/var/log/anaconda/syslog"
for line in `cat $file`
do
    IFS=$' '
    wordCount=1
    for word in $line
    do
        if [ $wordCount -eq 2 ]
        then
            if [ $word = 'INFO' ]
            then
                echo "$line" >> info.log
            fi
            break
        fi
        ((wordCount++))
    done
    IFS=$'\n'
done