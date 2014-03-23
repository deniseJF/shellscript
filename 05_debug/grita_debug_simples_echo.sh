#!/bin/bash
# grita.sh
# 
# Mostra palavra em maiúsculas e com exclamações

TXT="gritaria"
TXT="   $TXT   "

echo "TXT com espaços: [$TXT]"
TXT=$(echo $TXT | tr ' ' '!')
echo "TXT com exclamações: [$TXT]"

TXT=$(echo $TXT | tr a-z A-Z)
echo "$TXT"

