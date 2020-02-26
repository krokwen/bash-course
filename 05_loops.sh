#!/usr/bin/env bash

# iterate over files
for i in *.sh; do
  echo "$i"
done

A="
A
B
C
"

# iterate over strings in variable
for i in $A; do
  echo "$i"
done

# iterate over strings in variable (wrong)
for i in "A B C D"; do
  echo "$i"
done

# iterate over range
for i in {0..3}; do
  echo "$i"
done

# iterate over range with custom step (2)
for i in {0..4..2}; do
  echo "$i"
done

B=("A" "B" "C" "D")

# iterate over array
for i in ${B[@]}; do
  echo "$i"
done

# c-style for loop
for ((i = 0; i < 5; i++)); do
  echo "$i"
done

# while loop
K=0
while [ $K -lt 3 ]; do
  echo "$K"
  K=$(($K + 1))
done

# iterate over file content (by string)
while read line; do
  echo "$line"
done <./file

# interrupting and skipping loop
for i in {0..20}; do
  if [[ $(($i % 2)) -gt 0 ]]; then
    # skip iteration if $i is not even
    continue
  fi

  echo "$i"

  if [[ $i -ge 10 ]]; then
    # break loop
    break
  fi
done
