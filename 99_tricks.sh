#!/usr/bin/env bash

date

#default args
echo $0
echo $?
echo $$

# catching and handling signals
trap "echo 'What?!'" SIGUSR1

#sleep 1
kill -s SIGUSR1 $$
#sleep 1

# saving command output to var
# proper way
MY_VAR=$(echo "my value")
echo $MY_VAR
# more risky way
MY_VAR=$(echo "my value")
echo $MY_VAR

# `` will evaluate its content and pass to its place; use it carefuly
echo `date`
echo $(date)

for i in {0..3}; do
  echo `echo $i`
  echo $(echo $i)
done

# "including" file
. ./my_stuff

echo $MY_VAR1

myFoonc

# also you can do it with 'source' command
source ./my_another_stuff

echo $MY_VAR3

# wrapping long command
echo "one long argument" \
  "another long arg" \
  "one more"

# in this case you can comment out any line to disable segment.

echo "one long argument" \
#  "another logn arg" \
  "one more"
