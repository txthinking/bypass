#!/bin/bash

cat \
  ../apple/domain.txt \
  ../douban/domain.txt \
  ../wechat/domain.txt \
  | sort | uniq > ../sample_domain.txt

cat \
  ../apple/cidr4.txt \
  ../douban/cidr4.txt \
  ../wechat/cidr4.txt \
  ../internal/cidr4.txt \
  | sort | uniq > ../sample_cidr4.txt

cat \
  ../apple/cidr6.txt \
  | sort | uniq > ../sample_cidr6.txt

cat \
  ../ad/baidu.txt \
  ../ad/taobao.txt \
  | sort | uniq > ../sample_block.txt
