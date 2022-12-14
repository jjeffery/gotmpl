# Gotmpl

Template processor using the [Go text template syntax](https://go.dev/text/template).

```
Usage: gotmpl [options]
Options:
  -o, --output string          Output file (required)
  -t, --template string        Template file (required)
  -s, --settings stringArray   Settings, can be repeated
  -h, --help                   Show help
```

Settings can be any of:
 - An environment file (ie contains lines in the format KEY=VALUE)
 - A reference to AWS SSM Parameters in the format ssm:/path

When there are multiple settings, the subsequent settings can use values defined previously.

```
eg: -s /etc/defaults/myservice -s ssm://myservice/{{.ENVIRONMENT}}
```

