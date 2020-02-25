#!/usr/bin/env bash

# declare global var
GLOBAL_VAR='imGlobal'

# declare function
myFunc() {
  # declare local var
  local local_var='imLocal'

  echo $GLOBAL_VAR
  echo $local_var
}

# call func
myFunc

echo $GLOBAL_VAR
echo $local_var

# another way to declare function
function myAnotherFunc {
  # return set an exit code for function
  return 1
}

echo $(myAnotherFunc && echo 0 || echo 1)

myAnotherFunc2() {
  return $1
}

echo $(myAnotherFunc2 1 && echo 0 || echo 1)
echo $(myAnotherFunc2 0 && echo 0 || echo 1)

# if you need a parametrized function, you can pass params to it like to shell script

newFunction() {
  echo "my args $1 and $2"
}

newFunction "ARG1" "ARG2"