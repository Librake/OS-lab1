#! /bin/bash

isExit=0
wrongInp=0

while [[ $isExit -eq 0 ]]
do
    clear
    echo "Print number to choose option:"
    echo "1. start nano   2. start vi   3. start links   4. exit"

    if [ $wrongInp -eq 1 ]
    then 
        echo "Wrong input"
    fi

    read option
    wrongInp=0

    if [ $option == "1" ]
    then
        nano
    elif [ $option == "2" ]
    then
        vi
    elif [ $option == "3" ]
    then
        links
    elif [ $option == "4" ]
    then
        isExit=1
    else
        wrongInp=1
    fi
done
clear