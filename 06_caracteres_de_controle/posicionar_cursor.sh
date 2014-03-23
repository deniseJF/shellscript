#!/bin/bash
#
#
# Movimento do cursor:
# ESC[nA	n linhas para cima, mesma coluna
# ESC[nB	n linhas para baixo, mesma coluna
# ESC[nC	n colunas para a direita, mesma linha
# ESC[nD	n colunas para a esquerda, mesma linha
# ESC[nE	n linhas para baixo, coluna 1
# ESC[nF	n linhas para cima, coluna 1
# ESC[nG	linha atual, coluna n
# ESC[n;mH	linha n, cluna m
#
# ESC = 033
# -e interpreta código
# ESC[A = ESC[1A
# ESC[1ADED = escreve DED, cursor fica a diretia do ded
#
# Resultado:
# H
#
# F     A
# G    D.C
# E     B
#
echo -e '\033c\033[HH\033[4;7H.C\033[3DD\033[AA\033[GF\nG\nE\033[7GB'


