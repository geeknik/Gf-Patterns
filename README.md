# Gf-Patterns V 2.0

## [New GF](https://github.com/geeknik/gf) by [![Twitter](https://img.shields.io/badge/twitter-@geeknik-blue.svg)](https://x.com/geeknik)

`gf` is a wrapper around grep to help you grep for things. These patterns aid in security research, bug bounty hunting, and vulnerability assessments.

## Installation

### Go Path Setup
[Go Path Setup](https://github.com/golang/go/wiki/SettingGOPATH)

Install `gf` with Go:
```bash
go install github.com/tomnomnom/gf@latest
```

### Enable Auto-completion

For `go install`:
```bash
echo 'source $GOPATH/pkg/mod/github.com/tomnomnom/gf@*/gf-completion.bash' >> ~/.bashrc
```

For `go get`:
```bash
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
```

Restart your terminal or run `source ~/.bashrc`.

### Install Patterns

Clone and install patterns:
```bash
git clone https://github.com/geeknik/Gf-Patterns
mkdir -p ~/.gf
mv ~/Gf-Patterns/*.json ~/.gf
```

## Usage

```bash
# Find SSRF parameters in URLs
cat urls.txt | gf ssrf

# Find redirect parameters
cat urls.txt | gf redirect

# Chain with other tools
cat subdomains.txt | waybackurls | gf sqli | tee -a sqli_params.txt
```

## Pattern File Format

Patterns are JSON files with grep flags and pattern arrays:

```json
{
    "flags": "-iE",
    "patterns": [
        "param1=",
        "param2=",
        "param3="
    ]
}
```

Available flags:
- `-i` : Case insensitive
- `-E` : Extended regex
- `-v` : Invert match
- `-o` : Output only matched part

## Available Pattern Files

### Web Vulnerabilities

| Pattern File | Description |
|-------------|-------------|
| `sqli.json` | SQL Injection parameters |
| `xss.json` | Cross-Site Scripting parameters |
| `rce.json` | Remote Code Execution parameters and command separators |
| `ssrf.json` | Server-Side Request Forgery (includes cloud metadata) |
| `lfi.json` | Local File Inclusion (includes Windows paths) |
| `ssti.json` | Server-Side Template Injection |
| `xxe.json` | XML External Entity vulnerabilities |
| `idor.json` | Insecure Direct Object Reference (includes UUID/hash) |
| `redirect.json` | Open redirect parameters |
| `nosql.json` | NoSQL Injection (MongoDB, etc.) |
| `deserialization.json` | Insecure deserialization patterns |
| `smuggling.json` | HTTP request smuggling patterns |
| `upload.json` | File upload vulnerabilities |

### API & Authentication

| Pattern File | Description |
|-------------|-------------|
| `jwt.json` | JWT/JWE token detection |
| `oauth.json` | OAuth and SSO parameters |
| `saml.json` | SAML parameters |
| `graphql.json` | GraphQL endpoints and injection |
| `cors.json` | CORS misconfiguration |
| `api-keys.json` | API key detection patterns |

### Client-Side

| Pattern File | Description |
|-------------|-------------|
| `prototype-pollution.json` | JavaScript prototype pollution |
| `websocket.json` | WebSocket endpoints |

### Discovery & Recon

| Pattern File | Description |
|-------------|-------------|
| `debug_logic.json` | Debug parameters and config endpoints |
| `interestingparams.json` | Interesting URL parameters (combined) |
| `interestingsubs.json` | Interesting subdomain keywords |
| `interestingEXT.json` | Interesting file extensions |
| `img-traversal.json` | Image file extensions for traversal |
| `jsvar.json` | JavaScript variable assignments |

### Infrastructure & Cloud

| Pattern File | Description |
|-------------|-------------|
| `s3-buckets.json` | AWS S3 bucket detection |
| `secrets.json` | Secrets, credentials, and leaked keys |
| `takeovers.json` | Subdomain takeover signatures |
| `errors.json` | Debug pages, stack traces, error messages |
| `docker.json` | Docker-related patterns |
| `kubernetes.json` | Kubernetes API patterns |

### CVE-Specific

| Pattern File | Description |
|-------------|-------------|
| `log4j.json` | Log4Shell / Log4j detection |
| `cve-2021-44228.json` | Log4j JNDI injection patterns |
| `struts.json` | Apache Struts vulnerabilities |
| `spring.json` | Spring Framework vulnerabilities |
| `exchange.json` | Microsoft Exchange (ProxyLogon, ProxyShell) |
| `citrix.json` | Citrix ADC/NetScaler vulnerabilities |
| `coldfusion.json` | Adobe ColdFusion vulnerabilities |
| `yii.json` | Yii framework vulnerabilities |
| `laravel.json` | Laravel framework vulnerabilities |

### Utility Patterns

| Pattern File | Description |
|-------------|-------------|
| `urls-extract.json` | Extract URLs from text |
| `base64.json` | Detect base64 encoded strings |
| `ip-addresses.json` | IP address detection (IPv4, IPv6) |
| `http-auth.json` | HTTP authentication patterns |
| `servers.json` | Server software detection |
| `firebase.json` | Firebase database detection |
| `fw.json` | Firewall and WAF detection |

### PHP-Specific

| Pattern File | Description |
|-------------|-------------|
| `php-sources.json` | PHP input sources (`$_GET`, `$_POST`, etc.) |
| `php-sinks.json` | PHP dangerous functions |
| `php-errors.json` | PHP error and warning detection |
| `php-curl.json` | PHP curl/exec patterns |
| `php-serialized.json` | PHP serialized objects |

### Other

| Pattern File | Description |
|-------------|-------------|
| `pdf.json` | PDF-related parameters (XXE via PDF) |
| `activemq.json` | Apache ActiveMQ patterns |
| `go-functions.json` | Go language functions |
| `strings.json` | String literals in code |
| `json-sec.json` | JSON security patterns |
| `meg-headers.json` | HTTP response headers |

## Pattern Categories by Use Case

### Bug Bounty / URL Parameter Hunting
- sqli, xss, rce, ssrf, lfi, ssti, xxe, idor, redirect, upload
- debug_logic, interestingparams, oauth, jwt, cors, graphql

### Code Auditing
- secrets, php-sources, php-sinks, php-curl
- jsvar, strings, base64, urls-extract

### Reconnaissance
- s3-buckets, takeovers, errors, interestingsubs, interestingEXT
- servers, http-auth, ip-addresses, firebase, fw

### Vulnerability Scanning
- log4j, cve-2021-44228, struts, spring, exchange, citrix
- coldfusion, yii, laravel, docker, kubernetes

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Validation

Validate pattern files:
```bash
bash validate.sh
```

## Credits

- [TomNomNom](https://twitter.com/TomNomNom) - Original `gf` tool author
- [1ndianl33t](https://twitter.com/1ndianl33t) - Original pattern collection
- [geeknik](https://twitter.com/geeknik) - Current maintainer

## License

MIT License - See [LICENSE](License.md) or [License.md](License.md)
