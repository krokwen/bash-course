#!/usr/bin/env bash

# declaring an environment variable

export MY_ENV_VAR='foo'

# this script can read MY_ENV_VAR from ENV array
./run/something

# or you can set ENV per task like this

MY_ENV_VAR='bar' ./run/something
