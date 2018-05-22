#!/bin/sh

# Install pur and other dev packages
pipenv install --dev || exit
# Update requirements.txt
pipenv run pur -r requirements.txt || exit

# Build for PyPI
python setup.py sdist || exit
python setup.py bdist_wheel --universal || exit

# Don't forget to update _version.py
# Assume version is 0.3.0 for examples below
# Then tag commit, push, tag as 0.3.0 in github, matching source version
# Finally to upload to pypi

# Assume this is your ~/.pypirc
#[distutils]
#index-servers=
#    pypi
#    testpypi
#
#[pypi]
#
#[testpypi]
#repository: https://test.pypi.org/legacy/

# Test against test PyPI repo
# twine upload -r testpypi dist/opedia_dataset_validator-0.3.0*

# Then upload to the real PyPI
# twine upload dist/opedia_dataset_validator-0.3.0*
