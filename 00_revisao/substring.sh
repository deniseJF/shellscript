#!/bin/bash

# echo banana | grep ana # funciona!

test $# -ne 2 && exit
echo $2 | grep -qs $1 && echo "$1 está contida em $2"


