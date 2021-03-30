#!/bin/bash

cat \
  ../_ipsite/domain.txt \
  ../apple/domain.txt \
  ../douban/domain.txt \
  ../wechat/domain.txt \
  | sort | uniq > ../sample_domain.txt

cat \
  ../_internal/cidr4.txt \
  ../_ipsite/cidr4.txt \
  ../apple/cidr4.txt \
  ../douban/cidr4.txt \
  ../wechat/cidr4.txt \
  | sort | uniq > ../sample_cidr4.txt

cat \
  ../apple/cidr6.txt \
  | sort | uniq > ../sample_cidr6.txt

cat \
  ../_ad/baidu.txt \
  ../_ad/taobao.txt \
  | sort | uniq > ../sample_block.txt
