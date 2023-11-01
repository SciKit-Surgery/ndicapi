-[![Build Status](https://github.com/scikit-surgery/ndicapi/workflows/.github/workflows/ci.yml/badge.svg)](https://github.com/scikit-surgery/ndicapi/actions)

# History
* Program:   NDI Combined API C Interface Library
* Creator:   David Gobbi
* Language:  English
* Authors:
  * David Gobbi
  * Andras Lasso <lassoan@queensu.ca>
  * Adam Rankin <arankin@robarts.ca>
  * Stephen Thompson <s.thompson@ucl.ac.uk>

# Overview

This package provides a portable C library that provides a straightforward interface to AURORA, POLARIS, and VEGA systems manufactured by Northern Digital Inc. This library is provided by the Plus library, and is not supported by Northern Digital Inc.

This fork implements continuous integration and deployment of binary Python wheels to PyPi. Otherwise it should remain identical to the upstream project.

## Building
Building and deployment should be handled automatically using github actions. For details see .github/workflows/ci.yml

## Contents
The main contents of this package are as follows:

1) A C library (libndicapi.a, ndicapi.lib/dll) that provides a set of C functions for communicating with an NDI device via the NDI Combined API.  The documentation for this library is provided in the ndicapi_html directory.

2) Two C++ header files (ndicapi.h and ndicapi_math.h) that provide and interface, via libndicapi.a, to an NDI device via the NDICAPI Serial Communications API that predated the Combined API. Documentation is provided in the polaris_html directory.

4) A pythoninterface to the ndicapi library.  However, only the original POLARIS API is supported through python.  The full ndicapi interface is not yet supported.

## Acknowledgments

The implementation of continuous integration and deployment was Supported by the [Wellcome Trust](https://wellcome.ac.uk/)  and the [EPSRC](https://www.epsrc.ac.uk/) as part of the [Wellcome Centre for Interventional and Surgical Sciences](http://www.ucl.ac.uk/weiss).
The ndicapi library was developed as part of the [PLUS Toolkit](https://plustoolkit.github.io/).


