#!/bin/sh -e

service nginx start

localshop celeryd -B -E
