#!/bin/bash

for s in $(cat $1)
do
    ./add.sh $s
done
