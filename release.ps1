#!/usr/bin/env pwsh

venv\\Scripts\\python.exe --version
git --version

$version = $(Get-Content version -First 1)

(Get-Content aws_saml_login/__init__.py) -replace("^__version__ = .*", "__version__ = `'${version}`'") | Set-Content aws_saml_login/__init__.py
venv\\Scripts\\python.exe setup.py clean
venv\\Scripts\\python.exe setup.py test
venv\\Scripts\\python.exe setup.py flake8

git add aws_saml_login_epam/__init__.py

git commit -m "Bumped version to $version"
git push

#venv\\Scripts\\python.exe --version setup.py sdist upload

git tag ${version}
git push --tags
