#!/bin/bash

for octet in $(echo $1 | tr '.' ' '); do
  printf "%08d" $(echo "obase=2; $octet" | bc)
  if [ "$octet" != "${1##*.}" ]; then
    printf "."
  fi
done

echo
