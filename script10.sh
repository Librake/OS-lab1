#! /bin/bash

man bash | tr ' ' '\n' | grep '....' | sort | uniq -c | sort -nr | head  -3 | awk '{ print $2; }'