#!/usr/bin/env bash

# declaring simple array
MY_ARRAY=('qwe' 'asd')

# array element access, you need a {}
# 0 element is ${MY_ARRAY[0]}
# 1 element is ${MY_ARRAY[1]}

# writing to array by index
MY_ARRAY[2]='foo'

echo ${MY_ARRAY[2]}

# append to array
MY_ARRAY+=('bar')

echo -e "\n"
# If you print array variable, then you get only first element
echo $MY_ARRAY
# You need {} and @ or * key to get all elements

# if you using @, then you get array separated by elements
echo ${MY_ARRAY[@]}
# and if you use *, then you get just a string of space separated whole array elements
echo ${MY_ARRAY[*]}

# note the difference between @ and *, when you using elemets with spaces and iterate with loop over array

# also using quotes with array make sense
# if you iterate over ${MY_ARRAY[@]}, you'll iterate over array string by words
# but if you iterate over "${MY_ARRAY[@]}", you'll iterate over array elements
ANOTHER_ARRAY=('foo' 'bar' 'foo bar')
for elem in ${ANOTHER_ARRAY[@]}; do
  echo "elem $elem"
done

for elem in "${ANOTHER_ARRAY[@]}"; do
  echo "elem $elem"
done

for elem in ${ANOTHER_ARRAY[*]}; do
  echo "elem $elem"
done

for elem in "${ANOTHER_ARRAY[*]}"; do
  echo "elem $elem"
done

# use declare operator to declare a hash var
declare -A MY_HASH

# only if you properly defined a hash, then you can write to hash
MY_HASH=(['qwe']='asd' ['zxc']='fgh' ['foo']='bar')

# you can work with hashes as same as with arrays
# @, *, quotes will make same effect
# all elements
echo ${MY_HASH[@]}
# element by key
echo ${MY_HASH['qwe']}
# ... but, if you need a key names, you need prepend with '!'
echo ${!MY_HASH[@]}
# If you print array variable, then you get only first element
echo $MY_HASH

# if you need iterate over hash, then you need iterate over hash keys, then you can get a value by key
for key in "${!MY_HASH[@]}"; do
  echo "$key => ${MY_HASH[$key]}"
done
