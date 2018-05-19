#!/bin/sh

pipenv install --dev || exit
pipenv run pur -r requirements.txt || exit
python setup.py sdist || exit
python setup.py bdist_wheel --universal || exit
