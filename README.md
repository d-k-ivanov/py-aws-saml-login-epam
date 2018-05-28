# AWS SAML Login

> Based on [Mai by Henning Jacobs](https://github.com/hjacobs/mai)<br>
> This Python package provides some helper functions to allow programmatic retrieval of temporary AWS credentials with EPAM IDP.<br>
> This package requires __**Python 3+**__

## Installation
```bash
# Normal install drom PyPI
sudo pip3 install --upgrade keepbot-asle
# From GitHub
sudo pip3 install --upgrade --no-cache git+https://github.com/keepbot/py-aws-saml-login-epam@master
# Locally
git clone https://github.com/keepbot/py-aws-saml-login-epam
sudo pip3 install --upgrade --no-cache .
```

## Usage
```bash
asle create <login_name>
# Identity provider URL: https://login.epam.com/adfs/ls/idpinitiatedsignon
# SAML username: yourname@epam.com
# SAML password: yourpassword
```

## Custom aws cli profile
```bash
asle create <login_name> --awsprofile <profile_name>
asle login <login_name> --awsprofile <profile_name>

aws --profile <profile_name>
```

## Help
```bash
Usage: asle [OPTIONS] COMMAND [ARGS]...

Options:
  -c, --config-file PATH  Use alternative configuration file
  -V, --version           Print the current version number and exit.
  --awsprofile TEXT       Profilename in ~/.aws/credentials  [default:
                          default]
  -h, --help              Show this message and exit.

Commands:
  create       Create a new profile
  create-all   Create for all roles a new own profile
  delete       Delete profile
  list         List profiles
  login        Login with given profile(s)
  require      Login if necessary
  set-default  Set default profile
```
