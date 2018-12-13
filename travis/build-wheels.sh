#!/bin/bash
set -e -x

# Compile wheels
#for PYBIN in /opt/python/*27*/bin; do
#    "${PYBIN}/pip" wheel /io/ -w wheelhouse/
#done

for PYBIN in /opt/python/*36*/bin; do
    "${PYBIN}/pip" wheel /io/ -w wheelhouse/
done

# Bundle external shared libraries into the wheels
for whl in wheelhouse/*.whl; do
    auditwheel repair "$whl" -w /io/wheelhouse/
done

