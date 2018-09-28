"%PYTHON%" setup.py build build_ext --openssl="%LIBRARY_PREFIX%"
if errorlevel 1 exit 1
"%PYTHON%" setup.py install --single-version-externally-managed --record=record.txt
if errorlevel 1 exit 1
