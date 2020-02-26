#!/usr/bin/env bash

# declaring variables
# you MUST use assignment with no spaces

# this will not work as you expect, it will try to execute command "VAR_DATE" and pass params "= 'date'" to it
VAR_DATE = 'date'

# but this will
VAR_DATE='date'

# print variable
echo $VAR_DATE

# variable evaluation
$VAR_DATE

# string susbtiution
echo "date command is \"${VAR_DATE}\""

# string susbtiution not working with single quotes, this string will immutable
echo 'date command is "${VAR_DATE}"'

# prepare default value for variable
# useful when command line args used

VAR_A="foo"
# use for VAR_B a value of VAR_A, even if it empty
VAR_B=${VAR_A:-'bar'}
echo $VAR_B

# use for VAR_B a default value, because VAR_C is undefined
VAR_B=${VAR_C:-'bar'}
echo $VAR_B

# sometimes you need read a variable dynamicaly, i.e. when you don't know variable name
# you can use eval, but it pretty risky.
PARAM_NAME='param'
VALUE='actual_param'
actual_param='foo'
eval $PARAM_NAME=$VALUE
# 'actual_param' will be here

eval $PARAM_NAME=\$$VALUE
# 'foo' will be here
echo $param

# bash constriction for string formatting

# in case of pasing command line args will be very useful string triming
VAR_ARG="--foo=bar"
echo ${VAR_ARG#--*=} # this will trim from left by pattern '--*=', i.e. only value of arg will left

# to extract an arg key you can use this
echo ${VAR_ARG%=*} # this will trim from righ by pattern '=*', i.e. only arg will left

# or you need to count a length of string
echo ${#VAR_ARG}

# also you can use printf, it works pretty similar to C printf, for example
printf "%s bar %s" 'foo' 'baz'