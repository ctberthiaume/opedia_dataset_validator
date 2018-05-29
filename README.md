opedia_dataset_validator
=====

A tool to detect errors in an [Opedia dataset Excel file](https://github.com/mdashkezari/opedia/tree/master/template).

### Install

#### From source
```sh
python setup.py install
```

#### From PyPi with `pip`
```sh
# Probably should put this in a virtual environment
pip install opedia_dataset_validator
```

### Usage
```
Usage: opedia_dataset_validator [OPTIONS] INPUT OUTPUT

  A tool to validate Opedia dataset files.

  INPUT should be an Opedia dataset Excel file conforming to the
  sepcification at
  https://github.com/mdashkezari/opedia/tree/master/template.

  OUTPUT should be an output file path or - for STDOUT. Output will be in
  the form of a tab-delimited text file encoded in UTF-8.

Options:
  -a, --all-errors  Print all errors. [default: only the first error of each
                    kind]
  -v, --value       Print cell values in error report. [default: False]
  --version         Show the version and exit.
  -h, --help        Show this message and exit.
```


### Run tests
Install `pytest` and this package in a virtual environment, then run `pytest` from the root of the source directory. Or, to test against Python 2 and 3, install `tox` and then run `tox` from the root of the source directory.
