#! /bin/bash

echo "$(cat /etc/passwd | awk -F ":" '{ print $3, $1 }' | sort -nk1) "