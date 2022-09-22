#! /bin/bash

IFS=$'\n'
inFile="/var/log/anaconda/X.log"
outFile="full.log"
echo > $outFile

for line in `cat $inFile`
do
    IFS=$' '
    wordCount=1
    for word in $line
    do
        if [ $wordCount -eq 3 ]
        then
            if [ $word = '(WW)' ]
            then
                echo ${line/'(WW)'/'Warning:'} >> $outFile
            fi
            break
        fi
        ((wordCount++))
    done
    IFS=$'\n'
done

for line in `cat $inFile`
do
    IFS=$' '
    wordCount=1
    for word in $line
    do
        if [ $wordCount -eq 3 ]
        then
            if [ $word = '(II)' ]
            then
                echo ${line/'(II)'/'Information:'} >> $outFile
            fi
            break
        fi
        ((wordCount++))
    done
    IFS=$'\n'
done