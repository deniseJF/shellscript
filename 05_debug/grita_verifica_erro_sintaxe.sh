#!/bin/bash
# grita.sh
# 
# Mostra palavra em maiúsculas e com exclamações
# 
# $bash -n grita_verifica_erro_sintaxe.sh 
# O "bash -n" apenas verifica erro de sintaxe do programa, não executa
# É útil para programas de execução demorada, o -n só testa, não executa, trazendo resultado rápido.

TXT="gri"taria"
TXT="   $TXT   "
TXT=$(echo $TXT | tr ' ' '!')
TXT=$(echo $TXT | tr a-z A-Z)
echo "$TXT"

