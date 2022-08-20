#!/bin/bash
while read linea; do
	echo $linea | iconv -f UTF-8 -t ASCII//TRANSLIT | tr "A-Za-z" "a-zA-Z"
done <$1

