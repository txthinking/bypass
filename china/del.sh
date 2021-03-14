#!/bin/bash

for s
do
    if [ $(grep -e "^$s$" ../chinadomain.txt | wc -l) -gt 0 ]
    then
        command -v gsed > /dev/null 2>&1
        if [ $? == 0 ]
        then
            gsed -r -i "/^$s$/d" ../chinadomain.txt
        else
            sed -r -i "/^$s$/d" ../chinadomain.txt
        fi
        echo "Removed: $s"
    else
        echo "No: $s"
    fi
done

