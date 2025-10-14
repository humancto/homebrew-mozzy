# Homebrew Tap for mozzy

## Installation

```bash
brew tap humancto/mozzy
brew install mozzy
```

## About

**mozzy** - Postman for your Terminal

A modern HTTP client with beautiful colors, inline JSON queries, request collections, JWT tools, workflows, and powerful request chaining.

- 🎨 Colorized JSON output
- 🔍 JSONPath filtering with `--jq`
- 📚 Request collections & history
- 🔗 Variable captures & chaining
- ⚙️ YAML workflows
- 🔐 JWT decode/verify/sign
- 🚀 Retry logic & verbose mode

## Links

- **Homepage:** https://github.com/humancto/mozzy
- **Issues:** https://github.com/humancto/mozzy/issues
- **Releases:** https://github.com/humancto/mozzy/releases

## Manual Installation

```bash
# Tap this repository
brew tap humancto/mozzy

# Install mozzy
brew install mozzy

# Verify
mozzy --version
mozzy GET https://jsonplaceholder.typicode.com/users/1
```

## Development

This tap is automatically updated by GoReleaser when new versions of mozzy are released.
