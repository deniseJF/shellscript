#!/bin/bash
#
#
# trap read DEBUG
# ...
# trap "" DEBUG
# 
# Execução passo a passo, pausada, a próxima linha só executada quando o usuário pressiona "ENTER"
# Obs: não funciona no Bourne Shell (sh)
#
# cinco.sh
# Conta até 5
#

echo $((0+1))

trap read DEBUG  # liga passo a passo
echo $((0+2))
echo $((0+3))
trap "" DEBUG  # desliga passo a passo

echo $((0+4))
echo $((0+5))


