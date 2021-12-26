#!/bin/bash

#Imprime el script que esta ejecutandose
script_name1=$(basename $0)
echo "Script ejecutandose $script_name1 "
parm12=""

#Imprime el numero de argumentos que se han pasado

if [ $# -eq 0 ]; then
    echo "No se ingresaron parametros"
else
    echo "--> Mostrando los parametros ingresados <--"
    i=1
    for parametro in "$@"; do
        if (($i == 1 || $i == 2)); then
            parm12="$parm12 Parametro $i $parametro"
        else
            if (($i == 3)); then
                echo $parm12
                echo "Parametro $i: $parametro"
            else
                echo "Parametro $i: $parametro"
            fi
        fi
        i=$((i + 1))
    done
fi
