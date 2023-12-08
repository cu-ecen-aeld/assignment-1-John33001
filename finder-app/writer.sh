#!/bin/sh

writefile=$1
writestr=$2

for i in "$writefile"; do
    mkdir -p -- "$(dirname -- "$i")"
    touch -- "$i"
    done

if [ $# -lt 1 ]; then
    echo "MISSING ARGUMENT";
    exit 1;
fi

if [ -z "$writestr" ]; then
  echo "ERROR: NO ENTERD WORD!!!"
  exit 1
else
  echo "$writestr" | tee $writefile
fi
