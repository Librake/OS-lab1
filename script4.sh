#! /bin/bash

currentDir=`pwd`
home=~
if [ $currentDir == $home ]
then
    echo $currentDir
    exit 0
else
    echo "Error. Current dir isn't home-dir"
    exit 1
fi
