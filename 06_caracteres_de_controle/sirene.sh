#!/bin/bash
#
#
# sirene.sh
#

echo -ne '\033[11;900]' # cada bipe dura quase 1s

while :
do
  echo -ne '\033[10;500]\a'; sleep 1 # tom alto (agudo)
  echo -ne '\033[10;400]\a'; sleep 1 # tom baixo (grave)
done
