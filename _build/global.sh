#!/bin/bash

cat \
  ../_ipsite/domain.txt \
  ../amazon/domain.txt \
  ../apple/domain.txt \
  ../cloudflare/domain.txt \
  ../dropbox/domain.txt \
  ../facebook/domain.txt \
  ../google/domain.txt \
  ../twitter/domain.txt \
  ../wikipedia/domain.txt \
  | sort | uniq > ../global_domain.txt

cat \
  ../_internal/cidr4.txt \
  ../amazon/cidr4.txt \
  ../apple/cidr4.txt \
  ../cloudflare/cidr4.txt \
  ../dropbox/cidr4.txt \
  ../facebook/cidr4.txt \
  ../google/cidr4.txt \
  ../twitter/cidr4.txt \
  ../wikipedia/cidr4.txt \
  | sort | uniq | cidr-merger > ../global_cidr4.txt

cat \
  ../amazon/cidr6.txt \
  ../apple/cidr6.txt \
  ../cloudflare/cidr6.txt \
  ../dropbox/cidr6.txt \
  ../facebook/cidr6.txt \
  ../google/cidr6.txt \
  ../twitter/cidr6.txt \
  ../wikipedia/cidr6.txt \
  | sort | uniq | cidr-merger > ../global_cidr6.txt

cat \
  ../_ad/baidu.txt \
  ../_ad/taobao.txt \
  | sort | uniq > ../global_block.txt
