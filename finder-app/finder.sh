#!/bin/sh

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
  echo "ERROR: $filesdir IS NOT FOUND!!!"
  exit 1
fi

if [ -z "$searchstr" ]; then
  echo "ERROR: NO SEARCH WORD!!!"
  exit 1
else
  #hi="$(grep -cR $searchstr $filesdir)"
  t="$(find  $filesdir -type f -name "*.txt" -exec grep -cR $searchstr  {} \;)"
  y="${#t}"
  y=$((y+1))
  y=$((y/2))
fi

cd $filesdir
x="$(find . -type f | wc -l)"
echo "The number of files are $x and the number of matching lines are $y"


