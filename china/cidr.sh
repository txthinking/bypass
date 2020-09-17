#!/bin/bash
# data from https://github.com/gaoyifan/china-operator-ip

# TODO we may add lan CIDR

curl -s https://raw.githubusercontent.com/gaoyifan/china-operator-ip/ip-lists/china.txt > ../chinacidr4.list
curl -s https://raw.githubusercontent.com/gaoyifan/china-operator-ip/ip-lists/china6.txt > ../chinacidr6.list
echo '17.0.0.0/8' >> ../chinacidr4.list
