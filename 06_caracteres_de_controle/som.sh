#!/bin/bash
#
# Comandos de som
# ESC[10;n]	define frequencia para n		padrão: 750
# ESC[11;n]	define duração para n milisegundos	padrão: 100
#
#
#
#

echo -e '\033[11;20000]'	# Define a duração para 200 milisegundos
echo -e '^G'		# Emite um bipe
echo -e '\033[11;100]'	# restaurando a duração padrão
