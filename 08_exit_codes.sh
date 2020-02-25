#!/usr/bin/env bash

# exit codes in unix is a basis of boolean operations
# 0 - is success
# >0 - is fail
# maximum value is 255

# you can use different exit codes in different cases, for example exit 10 when no config file, or something like this

# to determine which exit code was last time you can read a $? variable
true ; echo $?
false ; echo $?

# in functions you can set exit code with return
myFoonk() {
  return 0
}

myFailFoonk() {
  return 1
}

myFoonk ; echo $?
myFailFoonk ; echo $?

# in script by default exit code is 0

# but you can change it
exit 1
# this script will fail =)
