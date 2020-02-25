#!/usr/bin/env bash

# $$ contain pid of this script
echo $$

# $0 contain script name that you used to run it
echo $0

# $@ contain all command line args like array

echo $@

# $1 and next contain command line args
echo $1
echo $2
echo $3

# you can read it, and often you need to have a default value

VAR1=${1:-'foo'}
VAR2=${2:-'bar'}
VAR3=${3:-'baz'}

echo $VAR1
echo $VAR2
echo $VAR3