#! /bin/bash

function ChangeAndWriteToFile 
{
    for line in `cat $inFile`
    do
        IFS=$' '
        wordCount=1
        for word in $line
        do
            if [ $wordCount -eq 3 ]
            then
                if [ $word = $1 ]
                then
                    echo ${line/$1/$2} >> $outFile
                fi
                break
            fi
            ((wordCount++))
        done
        IFS=$'\n'
    done
}

IFS=$'\n'
inFile="/var/log/anaconda/X.log"
outFile="full.log"
echo > $outFile

ChangeAndWriteToFile '(WW)' 'Warning:'
ChangeAndWriteToFile '(II)' 'Information:'