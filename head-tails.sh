#!/bin/sh


if [ -e /dev/chaoskey1 ]
then
  RNG="/dev/chaoskey1"
else
  if [ -e /dev/chaoskey2 ]
  then
    RNG="/dev/chaoskey2"
  else
    RNG="/dev/urandom"
  fi
fi

echo "Using $RNG"

over=0
for j in {1..50}
do
  
  even=0
  odd=0
  for i in {1..5000}
  do
    ranNum=$(($(od -An -N1 -i /dev/urandom) % 2))
    if [ "$ranNum" -eq 1 ]
    then
      odd=$((odd+1))
      
    fi
    
    if [ "$ranNum" -eq 0 ]
    then
      even=$((even+1))
      
    fi
    
    
  done
  if [ "$odd" -gt 2499 ]
      then
        over=$((over+1))
        #echo "Count is $odd and Over is $over"
      fi
 
  echo "Even $even Odd $odd"
done

echo "Over is $over"
