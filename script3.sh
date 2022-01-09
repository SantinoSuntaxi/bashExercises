#!/bin/bash
#Escribid un script que imprima en este orden y en líneas diferentes:
#El nombre del script que se está ejecutando.
#El número de argumentos que se han pasado al script.
#El primer y segundo argumentos, ambos en la misma línea.
#Si hay más de dos argumentos, los argumentos a partir del tercero (este incluido) cada uno en una línea.
clear
echo " Integrantes:   > Pedro Santino Suntaxi Cocanguilla"
echo "                > Washingtong David Pena Sanchez"
echo "                > David Chimbo Vega                     "
echo "                > Gabriel Hernan Mafla Cabascango"
echo
#Imprime el script que esta ejecutandose
script_name1=$(basename $0)
echo "Script ejecutandose --> $script_name1 "
echo
parm12=""
#Imprime el numero de argumentos que se han pasado
if [ $# -eq 0 ]; then
    echo "No se ingresaron parametros"
else
    echo "--> Mostrando los parametros ingresados <--"
    i=1
    for parametro in "$@"; do
        if (($i == 1 && $# == 1)); then
            echo "Parametro $i: $parametro"
        else
            if (($i == 1 && $# >= 2)); then
                parm12="$parm12 Parametro $i $parametro"
            fi
        fi
        if (($i == 2 && $# == 2)); then
            parm12="$parm12 Parametro $i $parametro"
            echo $parm12
        else if (($i == 2 && $# > 2)); then
					parm12="$parm12 Parametro $i $parametro"
				else if (($i == 3 && $# > 2)); then
							echo $parm12
							echo "Parametro $i: $parametro"
						else  if (($i > 3)); then
									echo "Parametro $i: $parametro"
								fi
						fi
				fi
        fi
        i=$((i + 1))
    done
fi
