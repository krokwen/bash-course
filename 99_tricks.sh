#!/usr/bin/env bash

date

#default args
echo $0
echo $?
echo $$

# catching and handling signals
trap "echo 'What?!'" SIGUSR1

sleep 5
kill -s SIGUSR1 $$
sleep 10

# saving command output to var
# proper way
MY_VAR=$(echo "my value")
echo $MY_VAR
# more risky way
MY_VAR=`echo "my value"`
echo $MY_VAR

# `` will evaluate its content and pass to its place; use it carefuly
date
echo `date`

for i in {0..3}; do
  echo `echo $i`
  echo $(echo $i)
done

# "including" file
. ./my_stuff

echo $MY_VAR1

myFoonc()

# also you can do it with 'source' command

source ./my_another_stuff

echo $MY_VAR3