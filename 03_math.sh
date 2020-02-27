#!/usr/bin/env bash

A=1
B=2

# you need a $[] or $(()) constructions to use math, othervise you working with strings
C=$A+$B
echo $C

D=$[$A + $B]
echo $D

D=$(($A + $B))
echo $D

# also you can do math without $ at variables, and use spaces inside of epression
D=$((A + B))
echo $D

# multiplication
echo $(($A * $B))

# division
# ooops, you can have only integers
echo $(($A / $B))
# that one will work fine
echo $((6 / $B))

# 'mod' operation
echo $((10 % 2))
echo $((10 % 3))
echo $((10 % 4))
