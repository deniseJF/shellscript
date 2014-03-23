#!/bin/bash 

# Uso de chaves

USAR_CORES=1

# O terminal VT100 não usa cores

if test "$TERM" = "vt100"
then
  USAR_CORES=0
fi

if test $USAR_CORES -eq 1
then
  msg_colorida $mensagem
else
  echo $mensagem
fi
