#! /bin/bash

man bash | grep -Eo '[A-Za-z]{4,}' | sort | uniq -c | sort -nr |  head  -3 | awk '{ print $2; }'