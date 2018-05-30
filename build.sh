#!/bin/sh
# Run this from within a conda environment seeded with just pip
# conda create -n pydev pip

# Then install other python dev packages with pip
# conda activate pydev
# (pydev) pip install keyring twine tox pytest pipenv

# Install pur and other dev packages
pipenv --rm
pipenv install --dev
pipenv update
# Update requirements.txt
[ -e requirements.txt ] && rm requirements.txt
pipenv lock -r > requirements.txt

# Build for PyPI
[ -d build ] && rm -rf build
[ -d dist ] && rm -rf dist
python setup.py sdist bdist_wheel

# Don't forget to update _version.py

# Assume version is 0.3.0 for examples below
# Then tag commit, push, tag as 0.3.0 in github, matching source version
# Finally to upload to pypi

# Update pip, setuptools, wheel, twine, keyring
# install -U pip setuptools wheel twine keyring

# Assume this is your ~/.pypirc
#[distutils]
#index-servers=
#    pypi
#    testpypi
#
#[pypi]
#username = < pypi.org username >
#
#[testpypi]
#repository: https://test.pypi.org/legacy/
#username = < test.pypi.org username >

# Store pypi password
# keyring set https://test.pypi.org/legacy/ < test.pypi.org username >
# keyring set https://upload.pypi.org/legacy/ < pypi.org username >

# Test against test PyPI repo
# twine upload -r testpypi dist/opedia_dataset_validator-0.3.0*

# Create a virtualenv and test install from test.pypi.org
# virtualenv pypi-test
# pypi-test/bin/pip install -r requirements.txt
# pypi-test/bin/pip install -i https://testpypi.python.org/pypi opedia_dataset_validator
# pypi-test/bin/opedia_dataset_validator --version

# Then upload to the real PyPI
# twine upload dist/opedia_dataset_validator-0.3.0*
