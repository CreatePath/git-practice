#!/bin/sh
i=0
if [ "$1" = "" ]; then
  while [ $i -eq 0 ]; do # infinite loop
    echo "hello world"
  done
else
  while [ $i -lt $1 ]; do
    echo "hello world"
    i=$(expr $i + 1)
  done
fi
exit 0