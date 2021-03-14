#!/bin/bash

export LC_COLLATE=C
for s
do
    if [ $(grep -e "^$s$" ../chinadomain.txt | wc -l) -gt 0 ]
    then
        echo "Exists: $s"
    else
        echo "$s" >> ../chinadomain.txt
        sort -u ../chinadomain.txt -o ../chinadomain.txt
        echo "Added: $s"
    fi
done

