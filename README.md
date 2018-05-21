opedia_dataset_validator
=====

A tool to detect errors in an [Opedia dataset Excel file](https://github.com/mdashkezari/opedia/tree/master/template).


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
