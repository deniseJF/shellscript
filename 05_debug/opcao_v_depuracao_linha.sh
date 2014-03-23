#!/bin/bash
#
# bash -v script.sh
# 
# 	Opção -v : depuração que mostra a linha atual que está sendo executada
# 	Pode ser global: bash -v script.sh, depurando todo o código, 
# ou setorizado: set -v para iniciar, e set +v para finalizar o modo depuração.
#
#

set -v
echo $(echo $(echo $(echo $(echo oi))))

echo $((0+1))
set +v

echo $((0+2))
echo $((0+3))
echo $((0+4))
echo $((0+5))
