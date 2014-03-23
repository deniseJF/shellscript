#!/bin/bash
#
# Testando o uso de aspas em variáveis
#


TXT='   um   dois   tres   '

# sem aspas, o shell ignora todos os espaços e mostra o valor da variável
echo $TXT 
# um dois tres

# com aspas dupla, mostra o conteúdo real da variável
echo "$TXT"
#   um   dois   tres  

# com aspas simples, a variável não é expandida, é tratado como texto
echo '$TXT'
# $TXT 
