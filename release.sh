#!/bin/sh

set -xe

python --version
git --version

version=$(head -1 version)

sed -i "s/__version__ = .*/__version__ = '${version}'/" asle/__init__.py
python setup.py clean
#python setup.py test
python setup.py flake8

git add asle/__init__.py

git commit -m "Bumped version to $version"
git push

#python setup.py sdist upload

git tag ${version} -f
git push --tags
