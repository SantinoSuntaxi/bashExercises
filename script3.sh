#!/bin/bash
#Escribid un script que imprima en este orden y en líneas diferentes:
#El nombre del script que se está ejecutando.
#El número de argumentos que se han pasado al script.
#El primer y segundo argumentos, ambos en la misma línea.
#Si hay más de dos argumentos, los argumentos a partir del tercero (este incluido) cada uno en una línea.
clear
echo -e '\e[1;32m';
echo "*********************************************************************";
echo "*                _____   ___ _    _    ___   ___   ___              *";
echo "*               |     | |___  \  /  _ |   | |___| |___              *";
echo "*               |_____| |___   \/     |___| |      ___|             *";
echo "*                                                                   *";
echo "***UNIR Ecuador | Universidad Internacional de La Rioja en Ecuador***";
echo "*                                                                   *";
echo "***************Administración de Sistemas para la Cloud**************";
echo "*                                                                   *";
echo "* Actividad grupal: Programación en Bash                            *";
echo "*                                                                   *";
echo "* Integrantes:                                                      *";
echo "*             > Pedro Santino Suntaxi Cocanguilla                   *";
echo "*             > Washingtong David Pena Sanchez                      *";
echo "*             > David Chimbo Vega                                   *";
echo "*             > Gabriel Hernan Mafla Cabascango                     *";
echo "*                                                                   *";
echo "*********************************************************************";
echo -e '\e[m';
echo

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
