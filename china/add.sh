#!/bin/bash

export LC_COLLATE=C
for s
do
    if [ $(grep -e "^$s$" ../chinadomain.list | wc -l) -gt 0 ]
    then
        echo "Exists: $s"
    else
        echo "$s" >> ../chinadomain.list
        sort -u ../chinadomain.list -o ../chinadomain.list
        echo "Added: $s"
    fi
done

