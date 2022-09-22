#! /bin/bash

greatest=$1

if [ $2 -gt $greatest ]
then
    greatest=$2
fi

if [ $3 -gt $greatest ]
then
    greatest=$3
fi

echo $greatest