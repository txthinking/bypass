#!/bin/bash

cat my_script.tengo.header > my_script.tengo

for v in $*
do
    echo $v
    cat modules/$v.tengo >> my_script.tengo
done

cat my_script.tengo.footer >> my_script.tengo
