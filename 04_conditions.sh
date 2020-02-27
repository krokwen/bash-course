#!/usr/bin/env bash

A=1
B=2
C=3

# true condition
if [[ $A -lt $B ]]; then
  echo 'This is true'
fi

# false condition
if [[ $A -gt $B ]]; then
  echo 'This is true'
else
  echo 'This is false'
fi

# complex condition
if [[ ! $A -gt $B && $A -gt $B ]]; then
  echo 'This is true'
else
  echo 'This is false'
fi

# 'else if'

if false; then
  echo "This is true"
elif true; then
  echo "This is realy true"
else
  echo "No more truth"
fi

# inline conditions
[[ $A -gt $B ]] && echo 'This is true' || echo 'This is false'
# another inline condition. [[]] is an alias to 'test'
test $A -gt $B && echo 'This is true' || echo 'This is false'

# all conditions in bash working with exit codes.
# 0 is true
# 1 and more is false

# true returns 0
true && echo 'yay'
# false returns 1
false && echo 'yay' || echo 'nay'

# this able you to chain your commands
# sometime you need run command and continue, no matter it was succeded or not
# here you must use ';' to separate commands
true && echo 'yay' || echo 'nay'; echo 'run anyway'
true; echo 'run anyway'
false; echo 'run anyway'
