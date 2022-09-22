#! /bin/bash

text=$(man bash)

#echo $(sed "s/[^[:alpha:]*]/\n/g" "$text" | sed /^$/d | sort | uniq -c | sort -nr | sed 3q)

#echo $(sed 's/[^[:alpha:]]\+/\n/g' "$text" | sed /^$/d | tr "[:upper:]" "[:lower:]" | sort | uniq -c | sort -nr | sed 3q)

#perl -lpe '++$h{lc $_}for/[[:alpha:]]+/g}for(map("$h{$_} $_",sort{$h{$b}<=>$h{$a}}keys%h)){' "$text"