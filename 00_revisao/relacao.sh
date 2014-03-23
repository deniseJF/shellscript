#!/bin/bash

ARGS_ERROR="ERROR: digite dois argumentos"
test -z $1 && echo "$ARGS_ERROR 1" && exit
test -z $2 && echo "$ARGS_ERROR 2" && exit
test $1 -gt $2 && echo "$1 é maior que $2" && exit
test $1 -lt $2 && echo "$1 é menor que $2" && exit
test $1 -eq $2 && echo "$1 é igual a $2" 
