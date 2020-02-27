#!/usr/bin/env bash

# printing text. use quotes on echo if you need to save text structure
TEXT="foo
bar
baz"

# this will retur a single string like "foo bar baz"
echo $TEXT
# but this will print text with wraps
echo "$TEXT"
# ... or this
echo "${TEXT}"

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
MY_VAR=`echo "my value"`
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
