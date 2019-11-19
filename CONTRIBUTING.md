# Contributing to Cloud Native SecurityHub

- [Contributing to SecurityHub](#contributing-to-securityhub)
  - [Code of Conduct](#code-of-conduct)
  - [How to Contribute a Security Resource](#how-to-contribute-a-security-resource)
  - [Slack](#slack)
  - [Developer Certificate Of Origin](#developer-certificate-of-origin)

## Code of Conduct

Cloud Native Security Hub has has a [Code of Conduct](CODE_OF_CONDUCT.md)
to which all contributors must adhere, please read it before interacting with
the repository or the community in any way.

## How to Contribute a Security Resource

1. Fork this repository
2. Create a YAML file under `resources/falco` directory to create a Falco rule
3. You can use an existing YAML file as template and fill out the YAML fields
   with your security resource information
4. Ensure your security resource is a valid YAML file: `make check` will check all rules
5. Submit a pull request

*NOTE*: In oder to make reviewing and merging of PRs faster, please submit
changes to multiple security resources in separate PRs.

And thank you very much for taking time to contribute!

## Slack

Other discussion, and **support requests** should go through the
`#cloud-native-security-hub` channel in the Sysdig slack, please join
[here](https://slack.sysdig.com).

## Developer Certificate Of Origin

The [Developer Certificate of Origin (DCO)](https://developercertificate.org/)
is a lightweight way for contributors to certify that they wrote or otherwise
have the right to submit the code they are contributing to the project.

Contributors to the Falco project sign-off that they adhere to these
requirements by adding a `Signed-off-by` line to commit messages.

```
This is my commit message

Signed-off-by: John Poiana <jpoiana@falco.org>
```

Git even has a `-s` command line option to append this automatically to your commit message:

```
$ git commit -s -m 'This is my commit message'
```
