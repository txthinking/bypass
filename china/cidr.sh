#!/bin/bash
# data from https://github.com/gaoyifan/china-operator-ip

curl -x socks5://127.0.0.1:1080 https://raw.githubusercontent.com/gaoyifan/china-operator-ip/ip-lists/china.txt > ../chinacidr4.txt
curl -x socks5://127.0.0.1:1080 https://raw.githubusercontent.com/gaoyifan/china-operator-ip/ip-lists/china6.txt > ../chinacidr6.txt
echo '10.0.0.0/8' >> ../chinacidr4.txt
echo '127.0.0.0/8' >> ../chinacidr4.txt
echo '169.254.0.0/16' >> ../chinacidr4.txt
echo '172.16.0.0/12' >> ../chinacidr4.txt
echo '192.168.0.0/16' >> ../chinacidr4.txt
echo '224.0.0.0/4' >> ../chinacidr4.txt
echo '17.0.0.0/8' >> ../chinacidr4.txt
