#!/bin/sh -e

docker run -d \
    -p 8000:8000 \
    isolated-pypi
