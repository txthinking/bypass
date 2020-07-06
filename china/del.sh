#!/bin/bash

for s
do
    if [ $(grep -e "^$s$" ../chinadomain.list | wc -l) -gt 0 ]
    then
        command -v gsed > /dev/null 2>&1
        if [ $? == 0 ]
        then
            gsed -r -i "/^$s$/d" ../chinadomain.list
        else
            sed -r -i "/^$s$/d" ../chinadomain.list
        fi
        echo "Removed: $s"
    else
        echo "No: $s"
    fi
done

