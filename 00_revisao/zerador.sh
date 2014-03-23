#!/bin/bash

echo -n "Digite um número: "
read NUM

echo -n "$NUM "
for i in $(seq $NUM)
do 
  echo -n "$((NUM-i)) "
done
echo  
