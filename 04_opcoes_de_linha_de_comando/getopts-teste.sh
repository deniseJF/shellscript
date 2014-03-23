#!/bin/bash

while getopts ":sa:" opcao
do
  case $opcao in 
    s) echo "opção simples -s" ;;
    a) echo "opção com argumento (-a), recebeu $OPTARG" ;;
    \?) echo "erro, opção inválida: $OPTARG" ;;
    :) echo "erro, faltou argumento para: $OPTARG" ;;
  esac
done

echo 
echo "optind: $OPTIND"
echo "resto1: $*"
shift $((OPTIND - 1))
echo "índice: $OPTIND"
echo "resto: $*"
echo

