# Bypass

[![Donate](https://img.shields.io/badge/Support-Donate-ff69b4.svg)](https://www.txthinking.com/opensource-support.html)
[![Slack](https://img.shields.io/badge/Join-Slack-ff69b4.svg)](https://docs.google.com/forms/d/e/1FAIpQLSdzMwPtDue3QoezXSKfhW88BXp57wkbDXnLaqokJqLeSWP9vQ/viewform)

#### Domain List. 域名列表

```
https://txthinking.github.io/bypass/chinadomain.txt
```

Suffix match mode, example:

* `cn`: with match `cn`, `*.cn`, `*.*.cn`, ...<br/>
* `a.com`: with match `a.com`, `*.a.com`, `*.*.a.com`, ...<br/>

後綴匹配模式, 比如:

* `cn`: 將會匹配 `cn`, `*.cn`, `*.*.cn`, ...<br/>
* `a.com`: 將會匹配 `a.com`, `*.a.com`, `*.*.a.com`, ...<br/>

#### CIDR4 List. IPv4列表

```
https://txthinking.github.io/bypass/chinacidr4.txt
```

#### CIDR6 List. IPv6列表

```
https://txthinking.github.io/bypass/chinacidr6.txt
```

#### On [Brook](https://github.com/txthinking/brook)

If you are using [Brook](https://github.com/txthinking/brook), Brook's rules are very simple, it uses the above three lists directly without special processing.

如果正在用Brook, Brook的規則很簡單, 它直接使用上面三個列表, 不需要特別處理.


#### Online PAC

> With socks5://127.0.0.1:1080

```
https://txthinking.github.io/bypass/china.pac
```

> You can create PAC by yourself with [$ brook pac ...](https://github.com/txthinking/brook)<br/>
> 你也可以創建自己的PAC: [$ brook pac ...](https://github.com/txthinking/brook)
