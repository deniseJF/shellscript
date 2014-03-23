#!/bin/bash
# ususarios.sh
#
# Mostra os logins e nomes de usuários do sistema
# Obs.: Lê dados do arquivo /etc/passwd
#
# Versão 1: Mostra usuarios e nomes separados por TAB 
# Versão 2: Adicionado suporte à opção -h
# Versão 3: Adicionado suporte à opção -V e opções inválidas
# Versão 4: Arrumado bug quando não tem opções, basename no nome do programa,
# -V extraindo direto dos cabeçalhos, adicionadas opções --help e --version
# Versão 5: Adicionada opção -s (--sort)
# Versão 6: Adicionadas opções -r, --reverse, -u, --upercase.
# 	e a leitura de múltiplas opções (loop) 
#
# Versão 7: Melhorias no código para que fique mais legível, adicionadas opções -d e --delimiter
# códico do Aurélio; Denise estudando 2014
#

MENSAGEM_USO="
Uso: $(basename "$0") [OPÇÕES]

OPÇÕES:
  -h,--help 		Mostra esta tela de ajuda e sai
  -V,--version		Mostra a versão do programa e sai
  -s, --sort		Ordena a listagem alfabeticamente
  -r, --reverse		Inverte a listagem
  -u, --uppercase	Mostra a listagem em maiúsculas
  -d, --delimiter C     Mostra a listagem em maiúsculas
"

ordenar=0	 # A saída deverá ser ordenada?
inverter=0	 # A saída deverá ser invertida?
maiusculas=0	 # A saída deverá ser em maiúsculas?
delimitador='\t' # Caracter usado como delimitador de saída.

# Tratamento das opções de linha de comando

while test -n "$1"
do
	case $1 in
	  -r | --reverse) inverter=1 ;;
	  -u | --uppercase) maiusculas=1 ;;
	  -s | --sort) ordenar=1 ;;
	  -d | --delimiter)
	    shift
	    delimitador="$1"
	    if test -z "$delimitador"
	    then
	      echo "Faltou argumento para o comando -d"
	      exit 1 
            fi
	  ;;
	  -h | --help)
            echo "$MENSAGEM_USO"
	    exit 0;
	  ;;
	  -V | --version)
	    echo -n $(basename "$0") 
	    # extrai a versão diretamente dos cabeçalhos do programa
	    grep "^# Versão" "$0" | tail -1 | cut -d: -f1 | tr -d \#
	    exit 0;
	  ;;
	  *)
	    if test -n "$1"
	    then
	      echo Opção inválida: $1
	      exit
	    fi
	  ;;
	esac
  
  # Opção $1 já foi processada, a fila deve andar
  shift 
done
# Processamento

# Extrai a listagem
lista=$(cut -d: -f1,5 /etc/passwd)

# Ordena a listagem
test "$ordenar" = 1 && lista=$(echo "$lista"|sort)
# Inverte a listagem
test "$inverter" = 1 && lista=$(echo "$lista"|tac)
# Converte para maiúsculas
test "$maiusculas" = 1 && lista=$(echo "$lista"| tr a-z A-Z)

# Mostra o resultado para o susário, transformando o delimitador em tab
echo "$lista" | tr : "$delimitador"


