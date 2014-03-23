#!/bin/bash
# 
# DEBUG CATEGORIZADO
# Debug 1 - mensagens genéricas de localização ("estou aqui")
# Debug 2 - mensagens de localização de fluxo ("entrei no loop")
# Debug 3 - mensagens de conteúdo de vriáveis importantes
# Debug 4 - mensagens com conteúdo de variáveis secundárias
#

# O níve é passado pela variável $1,
# por default (:-) o debug está desligado (:-0)
DEBUG=${1:-0}	 

# Função de depuração, 
# se o modo Debug estiver ligado, mostra (echo) todos os argumentos passados pela função ($*)
Debug(){
  [ $1 -le "$DEBUG" ] || return
  local prefixo
  case "$1" in
    1) prefixo="-- DEBUG " ;;
    2) prefixo="---- DEBUG " ;;
    3) prefixo="------ DEBUG " ;;
    *) echo "Mensagem não categorizada: $*"; return;
  esac
  shift

  echo $prefixo$*
}

Debug 1 "Inicio do programa"

i=0
max=5
echo "Contando até $max"

Debug 2 "Entrou no WHILE"

while [ $i -ne $max ]; do
  Debug 3 "Valor de \$i antes de incrementar: $i"
  let i=$i+1
  Debug 3 "Valor de \$i depois de incrementar: $i"

  echo "$i..."
done 

Debug 2 "Saiu do WHILE"

echo 'Terminei!'

Debug 1 "Fim do Programa"

