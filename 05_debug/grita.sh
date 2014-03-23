#!/bin/bash
# grita.sh
# 
# Mostra palavra em maiúsculas e com exclamações
#
# ASPAS: se não colocar aspas ao redor da variável, os espaços consecutivos são reduzidos a apenas um.
# Por exemplo, no "$TXT" da linha 13, se tirar as aspas, os espaços em branco do início e do final são cortados
#


TXT="gritaria"
TXT="   $TXT   "
TXT=$(echo "$TXT" | tr ' ' '!')
TXT=$(echo $TXT | tr a-z A-Z)
echo "$TXT"

