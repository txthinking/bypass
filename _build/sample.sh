#!/bin/bash

cat \
  ../_ipsite/domain.txt \
  ../apple/domain.txt \
  ../tencent/domain.txt \
  | sort | uniq > ../sample_domain.txt

cat \
  ../_internal/cidr4.txt \
  ../_ipsite/cidr4.txt \
  ../alibaba/cidr4.txt \
  ../apple/cidr4.txt \
  ../baidu/cidr4.txt \
  ../huawei/cidr4.txt \
  ../tencent/cidr4.txt \
  | sort | uniq > ../sample_cidr4.txt

cat \
  ../alibaba/cidr6.txt \
  ../apple/cidr6.txt \
  ../baidu/cidr6.txt \
  ../huawei/cidr6.txt \
  ../tencent/cidr6.txt \
  | sort | uniq > ../sample_cidr6.txt

cat \
  ../_ad/baidu.txt \
  ../_ad/taobao.txt \
  | sort | uniq > ../sample_block.txt
