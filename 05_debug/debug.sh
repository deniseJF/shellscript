#!/bin/bash
# grita.sh
# 
# Mostra palavra em maiúsculas e com exclamações
#
#

DEBUG=1	# depuração: 0 desliga, 1 liga

# Função de depuração, 
# se o modo Debug estiver ligado, mostra (echo) todos os argumentos passados pela função ($*)
Debug(){
  [ "$DEBUG"=1 ] && echo "$*"
}

TXT="gritaria"
TXT="   $TXT   "

Debug "TXT com espaços: [$TXT]"
TXT=$(echo "$TXT" | tr ' ' '!')
Debug "TXT com exclamações: [$TXT]"

TXT=$(echo $TXT | tr a-z A-Z)
echo "$TXT"

