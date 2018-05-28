# AWS SAML Login

> This Python package provides some helper functions to allow programmatic retrieval of temporary AWS credentials with EPAM IDP.<br>
> This package requires __**Python 3+**__

## Installation
```bash
# From GitHub
sudo pip3 install --upgrade -e 'git+https://github.com/keepbot/py-aws-saml-login-epam@master#egg=py-saml-login-epam'
# Locally
git clone https://github.com/keepbot/py-aws-saml-login-epam
sudo pip3 install --upgrade -e .
```

## Usage
```bash
mai create <login_name>
# Identity provider URL: https://login.epam.com/adfs/ls/idpinitiatedsignon
# SAML username: yourname@epam.com
# SAML password: yourpassword
```
