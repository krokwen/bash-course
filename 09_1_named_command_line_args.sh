#!/usr/bin/env bash

# you cant just get a kwargs in bash
# but you can use snippet like this

# iterate over args array
for i in "$@"; do
  # use switch-case construction to parse your kwargs
  case $i in
  # check arg for pattern '-a=*' or '--arga=*'
  -a=* | --arga=*)
    # strip '*=' from left of arg
    VAR_A="${i#*=}"
    ;;
  -b=* | --argb=*)
    VAR_B="${i#*=}"
    ;;
  -c=* | --argc=*)
    VAR_C="${i#*=}"
    ;;
  *)
    # unknown option. here you can throw an error
    ;;
  esac
done

echo $VAR_A $VAR_B $VAR_C
