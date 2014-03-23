#!/bin/bash
#
# Mostra todas as combinações de cores do console

for texto in 0 1 2 3 4 5 6 7; do
  for brilho in '' ';1'; do
    for fundo in 0 1 2 3 4 5 6 7; do
	seq="4$fundo;3$texto"
	echo -e "\033[$seq${brilho}m\c"
	echo -e "$seq${brilho:- } \c"
	echo -e "\033[m\c"
    done
  done
done
