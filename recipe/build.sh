#!/bin/bash

# the setup.py script is wrongly using cpp
ln -s "${CXX}" "${BUILD_PREFIX}/bin"

# Use PREFIX to use conda openssl
$PYTHON setup.py build build_ext --openssl $PREFIX
$PYTHON setup.py install --single-version-externally-managed --record record.txt
