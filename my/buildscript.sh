#!/bin/bash

cat my_script.tengo.header > my_script.tengo

if [ $# == 0 ]
then
    echo block_ipv6_aaaa
    cat modules/block_ipv6_aaaa.tengo >> my_script.tengo
    for v in `ls modules/ | cut -d. -f1 | grep -v block_ipv6_aaaa`
    do
        echo $v
        cat modules/$v.tengo >> my_script.tengo
    done
fi

if [ $# != 0 ]
then
    for v in $*
    do
        echo $v
        cat modules/$v.tengo >> my_script.tengo
    done
fi

cat my_script.tengo.footer >> my_script.tengo
