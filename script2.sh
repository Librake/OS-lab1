#! /bin/bash

fin="q"
text=""
str=""

while [[ $str != $fin ]]
do
    text=$text$str
    read str
done

echo $text