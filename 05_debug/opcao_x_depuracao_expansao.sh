#!/bin/bash
#
# bash -x script.sh
# 
# 	Opção -x : depuração que mostra na tela os comandos conforme são executados,
# fazendo expansão interna de nomes de arquivos e variáveis
# 	Pode ser global: bash -x script.sh, depurando todo o código, 
# ou setorizado: set -x para iniciar, e set +x para finalizar o modo depuração.
#
#

set -x
echo $(echo $(echo $(echo $(echo oi))))

echo $((0+1))
set +x

echo $((0+2))
echo $((0+3))
echo $((0+4))
echo $((0+5))
