# Cloud Native Security Hub

![last commit](https://flat.badgen.net/github/last-commit/falcosecurity/cloud-native-security-hub?icon=github) ![licence](https://flat.badgen.net/github/license/falcosecurity/cloud-native-security-hub)

Cloud Native Security Hub is a platform or a hub for discovering and sharing
rules and configurations for all these cloud native security tools.

This repository contains all the security resources which will be displayed on
https://securityhub.dev

## Usage

### Adding a new Falco Rule

You can use the following template or copy from any existent resource.

```yaml
apiVersion: v1
kind: FalcoRules
vendor: Apache # This is the provider name, is shipped by the vendor or by the community?
name: Apache # The name of the rule, is this for a product or we are protecting against a CVE
shortDescription: Falco rules for securing Apache HTTP Server # What does this rule does?
version: 1.0.0 # The version of the security resource
description: |
  # This is markdown!

  Add *anything* you want and it will be rendered on the security hub!

keywords: # A list of keywords. See the categories on https://securityhub.dev
  - web
icon: # A reference to an icon or an image for the rule
maintainers: # Who are maintaining this rule?
  - name: Nestor Salceda # Maintainer
    link: https://github.com/nestorsalceda # His/her GitHub link
  - name: Fede Barcelona
    link: https://github.com/tembleking
rules:
  - raw: |
      # Here goes the Falco rule itself, written in YAML

      - rule: Unexpected inbound tcp connection apache
        desc: Detect inbound traffic to apache using tcp on a port outside of expected set
        condition: inbound and evt.rawres >= 0 and not fd.sport in (apache_allowed_inbound_ports_tcp) and app_apache
        output: Inbound network connection to apache on unexpected port (command=%proc.cmdline pid=%proc.pid connection=%fd.name sport=%fd.sport user=%user.name %container.info image=%container.image)
        priority: NOTICE
```

## Contributing

Contributors are welcome!

See the [CONTRIBUTING.md](./CONTRIBUTING.md)
