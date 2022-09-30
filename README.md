# Bypass

[🤝 Telegram](https://t.me/brookgroup)
[💬 Private](https://join.txthinking.com)
[🩸 Youtube](https://www.youtube.com/txthinking)
[❤️ Sponsor](https://github.com/sponsors/txthinking)

## Domain match rule. 域名匹配规则

Match the current domain name and all its subdomains. 匹配當前域名及其所有子域名:

-   `cn`: `cn`, `xxx.cn`, `xxx.xxx.cn`
-   `a.com`: `a.com`, `xxx.a.com`, `xxx.xxx.a.com`

## Apple IP

To use [Apple Push Notification](https://www.txthinking.com/talks/articles/brook-en.article#apple-push-problem) Service (APNs), your macOS, iOS, tvOS, and watchOS devices need a persistent connection to Apple's servers over Ethernet, cellular data (if capable), or Wi-Fi.

要接收[苹果推送](https://www.txthinking.com/talks/articles/brook.article#apple-%E6%8E%A8%E9%80%81%E9%97%AE%E9%A2%98)，Apple Server 只允许 Ethernet, cellular data, Wi-Fi 连接. 所以你需要 Bypass 掉相关域名和 IP.

```
https://txthinking.github.io/bypass/apple_cidr4.txt
https://txthinking.github.io/bypass/apple_cidr6.txt
```

## MITM

## 替换google搜索为https://soso.ooo

```
https://txthinking.github.io/bypass/mitm_google2soso.txt
https://txthinking.github.io/bypass/mitm_google2soso.tengo
```

### Block Youtube APP AD 屏蔽Youtube App的广告

version: [here](https://github.com/txthinking/bypass/blob/master/mitm_youtubeappadblock.tengo#L2)

```
https://txthinking.github.io/bypass/mitm_youtubeappadblock.txt
https://txthinking.github.io/bypass/mitm_youtubeappadblock.tengo
```

## Resources

-   可以通过 [App Privacy Report](https://www.txthinking.com) 采集 App 域名和 IP
-   [brook](https://github.com/txthinking/brook)
-   [Shiliew](https://www.txthinking.com/shiliew.html)
-   [tun2brook](https://github.com/txthinking/tun2brook)
-   [Socks5 Configurator](https://chrome.google.com/webstore/detail/hnpgnjkeaobghpjjhaiemlahikgmnghb)
