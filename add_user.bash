#!/usr/bin/env bash

for var in "$@"; do
  echo "=== $var ==="
  for i in $(cat "$var"); do

    if [ ! -d /home/"$i" ]; then
      echo "$i"
      sudo useradd -m -d /home/"$i" "$i" || exit
      printf "$i\n$i\n" | sudo passwd "$i" || exit
    fi

  done
done
