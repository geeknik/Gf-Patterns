# Gf-Patterns V 2.0

## [GF](https://github.com/tomnomnom/gf) By [![Twitter](https://img.shields.io/badge/twitter-@TomNomNom-blue.svg)](https://twitter.com/TomNomNom) 

`gf` is a wrapper around grep, to help you grep for things. These patterns are to aid in security research purposes.

# installation

[Go Path Setup](https://github.com/golang/go/wiki/SettingGOPATH)

If you've got Go installed and configured you can install `waybackurls & Gf` with:

```bash 
go install github.com/tomnomnom/waybackurls@latest
```
Now download the gf tool for go lang 17 (that is go1.17) and may be above
```bash
go install github.com/tomnomnom/gf@latest
```
Or download the gf tool for go lang 16 (that is go1.16) and below
```bash
go get -u github.com/tomnomnom/gf
```
If you've installed using `go install`, you can enable auto-completion to your `.bashrc` like this:

```bash
 echo 'source $GOPATH/pkg/mod/github.com/tomnomnom/gf@v0.0.0-20200618134122-dcd4c361f9f5/gf-completion.bash' >> ~/.bashrc
```
If you've installed using `go get`, you can enable auto-completion to your `.bashrc` like this:

```bash
 echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
```
Note that you'll have to restart your terminal, or run `source ~/.bashrc` for the changes to
take effect.

To get started quickly, you can copy the example pattern files to `~/.gf` like this:
```bash
 mkdir .gf
```
If you've installed using `go install`, you can copy the example pattern files to `~/.gf` like this:
```bash
 cp -r $GOPATH/pkg/mod/github.com/tomnomnom/gf@v0.0.0-20200618134122-dcd4c361f9f5/examples ~/.gf
```
If you've installed using `go get`, you can copy the example pattern files to `~/.gf` like this:
```bash
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
```
**MY Gf Patterns installation**
```bash
 git clone https://github.com/1ndianl33t/Gf-Patterns
```

To get started quickly, you can copy the example pattern files to `~/.gf` like this:
```bash
 mkdir .gf
```
```bash
 mv ~/Gf-Patterns/*.json ~/.gf
```
**Use example**
```bash

 cat subdomains.txt | waybackurls | sort -u >> waybackdata | gf ssrf | tee -a ssfrparams.txt

 cat waybackdata | gf redirect | tee -a redirect.txt
```
### Pattern Files

The pattern definitions are stored in `~/.gf` as little JSON files that can be kept under version control:

**gf ssrf**

```bash
▶ cat ~/.gf/ssrf.json

{
    "flags": "-iE",
     "patterns": [

        "access",
        "admin",
        "dbg",
        "debug",
        "edit",
        "grant",
        "test",
        "alter",
        "clone",
        "create",
        "delete",
        "disable",
        "enable",
        "exec",
        "execute",
        "load",
        "make",
        "modify",
        "rename",
        "reset",
        "shell",
        "toggle",
        "adm",
        "root",
        "cfg",
        "dest",
        "redirect",
        "uri",
        "path",
        "continue",
        "url",
        "window",
        "next",
        "data",
        "reference",
        "site",
        "html",
        "val",
        "validate",
        "domain",
        "callback",
        "return",
        "page",
        "feed",
        "host",
        "port",
        "to",
        "out",
        "view",
        "dir",
        "show",
        "navigation",
        "open"
        
      ]
}

```

**gf redirect**

```bash
▶ cat ~/.gf/redirect

{
    "flags": "-iE",
     "patterns": [
"forward=",
"dest=",
"redirect=",
"uri=",
"path=",
"continue=",
"url=",
"window=",
"to=",
"out=",
"view=",
"dir=",
"show=",
"navigation=",
"Open=",
"file=",
"val=",
"validate=",
"domain=",
"callback=",
"return=",
"page=",
"feed=",
"host=",
"port=",
"next=",
"data=",
"reference=",
"site=",
"html="
]
}

```
***gf rce***
```bash
▶ cat ~/.gf/rce.json
{
    "flags": "-iE",
     "patterns": [
 
        "daemon",
        "upload",
        "dir",
        "execute",
        "download",
        "log",
        "ip",
        "cli",
        "cmd"
]
}
```
***Gf idor***

```bash
▶ cat ~/.gf/idor.json
{
    "flags": "-iE",
     "patterns": [

 "id",
 "user",
 "account",
 "number",
 "order",
 "no",
 "doc",
 "key",
 "email",
 "group",
 "profile",
 "edit",
 "report"
 
 ]
}

```






***Gf Sqli***
```bash
▶ cat ~/.gf/sqli.json
{
    "flags": "-iE",
     "patterns": [

         "id",
        "select",
        "report",
        "role",
        "update",
        "query",
        "user",
        "name",
        "sort",
        "where",
        "search",
        "params",
        "process",
        "row",
        "view",
        "table",
        "from",
        "sel",
        "results",
        "sleep",
        "fetch",
        "order",
        "keyword",
        "column",
        "field",
        "delete",
        "string",
        "number",
        "filter"
]
}
```
***Gf LFI***
```bash
▶ cat ~/.gf/lfi.json
{
    "flags": "-iE",
     "patterns": [

        "file",
        "document",
        "folder",
        "root",
        "path",
        "pg",
        "style",
        "pdf",
        "template",
        "php_path",
        "doc"
]
}
```

***Gf ssti***
```bash
▶ cat ~/.gf/ssti.json


{
    "flags": "-iE",
     "patterns": [
        
        "template",
        "preview",
        "id",
        "view",
        "activity",
        "name",
        "content",
        "redirect"
]
}
```

***Gf debug_logic***
```bash
▶ cat ~/.gf/debug_logic.json
{
    "flags": "-iE",
     "patterns": [

        "access",
        "admin",
        "dbg",
        "debug",
        "edit",
        "grant",
        "test",
        "alter",
        "clone",
        "create",
        "delete",
        "disable",
        "enable",
        "exec",
        "execute",
        "load",
        "make",
        "modify",
        "rename",
        "reset",
        "shell",
        "toggle",
        "adm",
        "root",
        "cfg",
        "config"
]
}
```

## Available Pattern Files

| Pattern File | Description |
|-------------|-------------|
| `debug_logic.json` | Debug parameters and configuration endpoints |
| `idor.json` | Insecure Direct Object Reference patterns |
| `img-traversal.json` | Image file extensions for path traversal detection |
| `interestingEXT.json` | Interesting file extensions (config, backup, etc.) |
| `interestingparams.json` | Interesting URL parameters (combined patterns) |
| `interestingsubs.json` | Interesting subdomain keywords |
| `jsvar.json` | JavaScript variable assignment patterns |
| `lfi.json` | Local File Inclusion patterns (includes Windows paths) |
| `redirect.json` | Open redirect and URL redirection parameters |
| `rce.json` | Remote Code Execution parameters and command separators |
| `sqli.json` | SQL Injection patterns and parameters |
| `ssrf.json` | Server-Side Request Forgery patterns (includes cloud metadata) |
| `ssti.json` | Server-Side Template Injection parameters |
| `xss.json` | Cross-Site Scripting parameters |
| `xxe.json` | XML External Entity vulnerabilities |
| `graphql.json` | GraphQL endpoints and injection patterns |
| `cors.json` | CORS misconfiguration parameters |
| `jwt.json` | JWT/JWE token detection patterns |
| `oauth.json` | OAuth flow and SSO parameters |
| `prototype-pollution.json` | JavaScript prototype pollution patterns |
| `upload.json` | File upload vulnerability parameters |
| `nosql.json` | NoSQL injection patterns (MongoDB, etc.) |
| `deserialization.json` | Insecure deserialization patterns |
| `smuggling.json` | HTTP request smuggling patterns |

# Credits
[![Twitter](https://img.shields.io/badge/twitter-@TomNomNom-blue.svg)](https://twitter.com/TomNomNom)
[![Twitter](https://img.shields.io/badge/twitter-@1ndianl33t-blue.svg)](https://twitter.com/1ndianl33t)

# Contact
[![Twitter](https://img.shields.io/badge/twitter-@geeknik-blue.svg)](https://twitter.com/geeknik)
