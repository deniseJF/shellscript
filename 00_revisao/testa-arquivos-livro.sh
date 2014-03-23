#!/bin/bash

echo -n "DIGITE o arquivo:"
read ARQ

test -d "$ARQ" && echo "$ARQ é um diretório"
test -f "$ARQ" && echo "$ARQ é um arquivo"

test -f "$ARQ" -o -d "$ARQ" || echo "O arquivo $ARQ não foi encontrado"

echo

