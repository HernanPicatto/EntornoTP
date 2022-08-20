#!/bin/bash 
aux=$2
aux1=$3
while read linea; do
    for pal in $linea; do
        if [[ $pal == $aux ]]
        then
            echo -n "$pal, " | iconv -f UTF-8 -t ASCII//TRANSLIT | tr "$aux" "$aux1"
        fi
    done
done <$1
