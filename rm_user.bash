#!/usr/bin/env bash

for var in "$@"; do
  echo "=== $var ==="
  for i in $(cat "$var"); do

    echo "$i"
    sudo userdel -r -f "$i" || exit

  done
done
