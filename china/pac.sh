#!/bin/bash

brook pac -p 'SOCKS5 127.0.0.1:1080; SOCKS 127.0.0.1:1080; DIRECT' -m white -d ../chinadomain.list -f ../china.pac
