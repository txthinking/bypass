此目录下是将一些可分享给他人的功能脚本抽象为独立的模块。有些功能是无法抽象为模块或者不方便公开分享，所以更强大和灵活的请编写独立脚本。[文档](https://brook.app) 和 [示例](https://github.com/txthinking/bypass)。

> Under this directory, some functional scripts that can be shared with others are abstracted into modules. Some functions cannot be abstracted into modules or are not convenient for public sharing, so please write standalone scripts for more powerful and flexible functions. [documentation](https://brook.app) and [example](https://github.com/txthinking/bypass).

## Brook 脚本生成器 | Brook Script Builder

https://modules.brook.app

## 模块原理 | Module principle

很简单，一个模块里有几个处理函数。一个头 + N 个模块 + 一个尾，最后合并成一个脚本文件。

> Very simple, there are several processing functions in a module. A header + N modules + a footer, finally merged into a script file.

一个头 | header

```
modules := []
```

模块 | module

```
modules = append(modules, {
    dnsquery: func(m) {
        if m.domain == "dns.google" {
            return { "block": true }
        }
    },
    address: func(m) {
        text := import("text")
        if m.ipaddress && (m.ipaddress == "8.8.8.8:853" || m.ipaddress == "8.8.8.8:443" || m.ipaddress == "8.8.4.4:853" || m.ipaddress == "8.8.4.4:443" || m.ipaddress == "[2001:4860:4860::8888]:853" || m.ipaddress == "[2001:4860:4860::8888]:443" || m.ipaddress == "[2001:4860:4860::8844]:853" || m.ipaddress == "[2001:4860:4860::8844]:443") {
            return { "block": true }
        }
        if m.domainaddress && text.has_prefix(m.domainaddress, "dns.google:") {
            return { "block": true }
        }
    }
})
```

一个尾 | footer

```
f := func() {
    if in_dnsquery {
        for i:=0; i<len(modules); i++{
            if modules[i]["dnsquery"] {
                r := modules[i]["dnsquery"](in_dnsquery)
                if is_error(r) || is_map(r) {
                    return r
                }
            }
        }
        return
    }
    if in_address {
        for i:=0; i<len(modules); i++{
            if modules[i]["address"] {
                r := modules[i]["address"](in_address)
                if is_error(r) || is_map(r) {
                    return r
                }
            }
        }
        return
    }
    if in_httprequest && !in_httpresponse {
        for i:=0; i<len(modules); i++{
            if modules[i]["httprequest"] {
                r := modules[i]["httprequest"](in_httprequest)
                if is_error(r) || is_map(r) {
                    return r
                }
            }
        }
        return in_httprequest
    }
    if in_httprequest && in_httpresponse {
        delete(in_httpresponse, "Alt-Svc") // Avoid upgrading to http3 from http1 or http2
        for i:=0; i<len(modules); i++{
            if modules[i]["httpresponse"] {
                r :=  modules[i]["httpresponse"](in_httprequest, in_httpresponse)
                if is_error(r) || is_map(r) {
                    return r
                }
            }
        }
        return in_httpresponse
    }
}
out := f()
```
