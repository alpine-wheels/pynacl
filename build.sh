#!/bin/sh

set -e

# install os dependencies
apk add --no-cache gcc libffi-dev make musl-dev

# build
pip wheel --no-deps --requirement requirements.txt
