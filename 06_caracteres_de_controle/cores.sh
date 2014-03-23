#!/bin/bash
#
# código descricão		código descrição
# 0	 normal			5	Pisca-Pisca
# 1	 brilhante		7	Video reverso (invertido)
# 30	 texto preto|cinza	40	fundo preto|cinza 
# 31	 texto vermelho		41	fundo vermelhor
# 32	 texto verde		42	fundo verde
# 33	 texto marrom|amarelo	43	fundo marrom|amarelo
# 34	 texto azul		44	fundo azul
# 35	 texto roxo		45	fundo roxo
# 36	 texto ciano		46	fundo ciano
# 37	 texto cinza|branco	47	fundo cinza|branco
#
# zzcores: mostra todas as combinações de cores do console
# (www.funcoeszz.net)
#
# código do Esc = 033
# echo -e: interpreta código octal, ex: 033
# echo -n: não deixa o echo quebrar a linha no final
# printf: não quebra linha
# 
# sintaxe de cores:
# ESC[n1;n2; ... m
# ESC[m = zero, normal
# 

echo "sem o brilhante, a cor fica opaca no terminal"
echo -e '\033[31m Mensagem Importante!!! \033[m' 
echo
echo "com o brilhante, fica normal"
echo -e '\033[31;1m Mensagem Importante!!! \033[m'
echo
echo -e '\033[44;31;1;5m fundo azul, letra vermelha \033[m'
