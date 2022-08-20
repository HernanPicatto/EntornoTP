#!/bin/bash 
while read linea; do
    for pal in $linea; do
        if [[ $pal =~ $2 ]]
        then
            echo -n "$pal, " | iconv -f UTF-8 -t ASCII//TRANSLIT | tr "$2" "$3"
        fi
    done
done <$1
