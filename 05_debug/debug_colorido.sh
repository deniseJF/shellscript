#!/bin/bash
# grita.sh
# 
# Mostra palavra em maiúsculas e com exclamações
#
#

DEBUG=1	# depuração: 0 desliga, 1 liga

# Função de depuração, 
# se o modo Debug estiver ligado, mostra (echo) todos os argumentos passados pela função ($*)
# echo -e: interpreta o que estiver na barra, em vez de imprimir
Debug(){
  [ "$DEBUG"=1 ] && echo -e "\033[33;1m$*\033[m"
}

TXT="gritaria"
TXT="   $TXT   "

Debug "TXT com espaços: [$TXT]"
TXT=$(echo "$TXT" | tr ' ' '!')
Debug "TXT com exclamações: [$TXT]"

TXT=$(echo $TXT | tr a-z A-Z)
echo "$TXT"

