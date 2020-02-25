#!/usr/bin/env bash

# read it as common file
while read line; do
  echo "read $line"
  # using /dev/stdin device as input file
done </dev/stdin
