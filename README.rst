====
asle
====

AWS SAML Login for EPAM

Based on [Mai by Henning Jacobs](https://github.com/hjacobs/mai)
This Python package provides some helper functions to allow programmatic retrieval of temporary AWS credentials with EPAM IDP.
This package requires Python 3.4


Installation
============

.. code-block:: bash

  # Normal install drom PyPI
  sudo pip3 install --upgrade keepbot-asle
  # From GitHub
  sudo pip3 install --upgrade --no-cache git+https://github.com/keepbot/py-aws-saml-login-epam@master
  # Locally
  git clone https://github.com/keepbot/py-aws-saml-login-epam
  sudo pip3 install --upgrade --no-cache .


Usage
=====

.. code-block:: bash

  asle create <login_name>
  # Identity provider URL: https://login.epam.com/adfs/ls/idpinitiatedsignon
  # SAML username: yourname@epam.com
  # SAML password: yourpassword


Custom aws cli profile
======================

.. code-block:: bash

  asle create <login_name> --awsprofile <profile_name>
  asle login <login_name> --awsprofile <profile_name>

  aws --profile <profile_name>

