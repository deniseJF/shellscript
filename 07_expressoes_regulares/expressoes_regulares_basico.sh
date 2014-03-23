#!/bin/bash 

echo "busca linha que contenha palavra 'root'"
grep root /etc/passwd
echo

echo "busca linha que comece com a palavra 'root'"
grep ^root /etc/passwd
echo

echo "linha que termina com a palavra 'bash'"
grep bash$ /etc/passwd
echo

echo "linha em branco"
grep '^$' /etc/passwd
echo

echo "caracteres que podem aparecer em uma posição"
grep '[Ee]lias' /etc/passwd
echo

echo "linhas que comecem com vogais"
grep '^[aeiou]' /etc/passwd
echo

echo "começa com consoante"
grep '^[^aeiou]' /etc/passwd
echo

echo "linhas que contenham números"
grep '[0-9]' /etc/passwd
echo

echo "a segunda letra deve ser uma vogal, a primeira pode ser qualquer caractere"
grep '^.[aeiou]' /etc/passwd
echo "conferindo:"
grep '^.[aeiou]' /etc/passwd | cut -c2
echo

echo "apenas o que possuem 39 caracteres"
grep '^.......................................$' /etc/passwd
echo

echo "egrep - conjunto avançado de expressões regulares, avalia expressão"
egrep '^.{39}$' /etc/passwd
grep '^.\{27\}$' /etc/passwd # o grep avalia texto, precisa escapar para avaliar expressão
echo

echo "de 20 a 30 caracteres"
egrep '^.{20,30}$' /etc/passwd
echo


echo "70 ou mais caracteres"
egrep '^.{70,}$' /etc/passwd
echo

echo "linha que possua 5 digitos seguidos ou mais"
egrep '[0-9]{5,}' /etc/passwd
echo "conferência:"
egrep '[0-9]{5,}' /etc/passwd | cut -d: -f4
echo

# curinga .* e AND
# procurar dois trechos entre duas linhas
echo "começa com vogais e termina com bash"
egrep '^[aeiou].*bash$' /etc/passwd
echo

# OR
echo "ou lógico"
egrep '^(elias|denise|root):' /etc/passwd


