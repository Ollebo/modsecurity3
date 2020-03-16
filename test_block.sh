#!/bin/bash

echo "Testig block"
x=1
while [ $x -le 100 ]
do
  echo "Rest $x times"
  x=$(( $x + 1 ))
  curl -v http://localhost:8080/blog/?page=10$x
  #sleep 1
done

