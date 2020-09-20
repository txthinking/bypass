#!/bin/bash
# data from https://github.com/gaoyifan/china-operator-ip

# TODO we may add lan CIDR

curl -x socks5://127.0.0.1:1080 https://raw.githubusercontent.com/gaoyifan/china-operator-ip/ip-lists/china.txt > ../chinacidr4.list
curl -x socks5://127.0.0.1:1080 https://raw.githubusercontent.com/gaoyifan/china-operator-ip/ip-lists/china6.txt > ../chinacidr6.list
echo '17.0.0.0/8' >> ../chinacidr4.list
echo '0.0.0.0/8' >> ../chinacidr4.list
echo '10.0.0.0/8' >> ../chinacidr4.list
echo '127.0.0.0/8' >> ../chinacidr4.list
echo '169.254.0.0/16' >> ../chinacidr4.list
echo '172.16.0.0/12' >> ../chinacidr4.list
echo '192.168.0.0/16' >> ../chinacidr4.list
echo '224.0.0.0/4' >> ../chinacidr4.list
