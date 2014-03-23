#!/bin/bash
echo "Digite o nome do arquivo: "
read FILE_NAME
test -f "$FILE_NAME" && echo "$1 é um arquivo" && exit
test -d "$FILE_NAME" && echo "$1 é um diretório" && exit
echo "o arquivo $1 não foi encontrado" && exit












