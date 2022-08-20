#! /bin/bash
while read linea; do
	for pal in $linea; do
        pal_aux=`echo $pal | iconv -f UTF-8 -t ASCII//TRANSLIT | tr 'A-Z' 'a-z'`
        alreves=`echo $pal_aux | rev `
        if [[ $pal_aux == $alreves ]]
        then
	        echo -n "$pal, "
        fi
    done
done <$1
	

