# Contributing to Gf-Patterns

Thank you for your interest in contributing to Gf-Patterns! This document provides guidelines for submitting new patterns and improvements.

## Pattern File Format

All pattern files are JSON files with the following structure:

```json
{
    "flags": "-iE",
    "patterns": [
        "pattern1=",
        "pattern2=",
        "pattern3="
    ]
}
```

Or for single pattern files:

```json
{
    "flags": "-HanroE",
    "pattern": "regex_pattern_here"
}
```

## Guidelines

### 1. Pattern Naming
- Use lowercase filenames: `vulnerability-type.json`
- Use descriptive names: `sqli.json`, `ssrf.json`, `rce.json`

### 2. Pattern Content
- **Parameter patterns** should end with `=` (e.g., `"id="`, `"file="`)
- **Case insensitive** matching is used (via `-i` flag)
- **Extended regex** is supported (via `-E` flag)
- Keep patterns focused and specific to the vulnerability type

### 3. JSON Formatting
- Use 4 spaces for indentation
- No trailing commas after the last pattern
- Properly escape special characters: `\\` for backslash, `\.` for literal dot

### 4. Submitting New Patterns

When submitting a new vulnerability pattern file, include:
- A clear description of the vulnerability type
- Example parameters or patterns to look for
- Any specific context about when/where to use the pattern

### 5. Validation

Before submitting, validate your JSON:
```bash
python3 -c "import json; json.load(open('your-file.json'))"
```

Or use the provided validation script:
```bash
bash validate.sh
```

### 6. Testing Patterns

Test your patterns with `gf`:
```bash
echo "test_url_with_param=value" | gf your-pattern
```

## Existing Pattern Categories

- **Injection**: SQLi, NoSQL, XXE, SSTI, GraphQL
- **Authentication**: IDOR, JWT, OAuth
- **File Operations**: LFI, upload, traversal
- **Remote Execution**: RCE, deserialization
- **Client-side**: XSS, prototype pollution
- **Network**: SSRF, redirect, CORS, smuggling
- **Discovery**: debug_logic, interesting params, extensions, subdomains

## Pull Request Process

1. Fork the repository
2. Create a new branch for your feature
3. Add or modify pattern files
4. Validate all JSON files pass validation
5. Submit a pull request with a clear description

Thank you for contributing!
