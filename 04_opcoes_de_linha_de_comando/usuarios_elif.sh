#!/bin/bash
# ususarios.sh
#
# Mostra os logins e nomes de usuários do sistema
# Obs.: Lê dados do arquivo /etc/passwd
#
# Versão 1: Mostra usuarios e nomes separados por TAB 
# Versão 2: Adicionado suporte à opção -h
# Versão 3: Adicionado suporte à opção -V e opções inválidas
#
# códico do Aurélio; Denise estudando 2014
#

MENSAGEM_USO="
Uso: $0 [-h | -V]

  -h Mostra esta tela de ajuda e sai
  -V Mostra a versão do programa e sai
"

# Tratamento das opções de linha de comando
if test $1 = "-h"
then
  echo "$MENSAGEM_USO"
  exit 0
elif test "$1" = "-V"
then
  #mostra a versão
  echo $0 Versão 3
  exit 0;
fi

# Processamento
cut -d : -f1,5 /etc/passwd | tr : \\t

