
#!/bin/bash

#Escribid un script en Bash que acepte una ruta a un fichero o un directorio e imprima por pantalla si es un fichero normal, 
#un directorio u otro tipo de fichero. Finalmente, el script ejecutará el comando ls sobre esta ruta en formato largo
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
read -p "Ingrese la ruta del fichero o carpeta: " ruta # Ingreso por consola
echo "La ruta ingresada es : " $ruta

if [ ! -d "$ruta" ]; then  # Comprueba si la ruta no corresponde a un fichero del tipo directorio
    if [ ! -f "$ruta" ]; then # Comprueba si la ruta no corresponde a un fichero
         if [ ! -c "$ruta" ]; then # Comprueba si la ruta no corresponde a un fichero del tipo caracter
             if [ ! -b "$ruta" ]; then # Comprueba si la ruta no corresponde a un fichero del tipo bloque
                if [ ! -L "$ruta" ]; then # Comprueba si la ruta no corresponde a un fichero del tipo Link simbólico
                    if [ ! -S "$ruta" ]; then # Comprueba si la ruta no corresponde a un fichero del tipo socket
                        if [ ! -p "$ruta" ]; then # Comprueba si la ruta no corresponde a un fichero del tipo pipeline
                            echo "no existe ruta"
                            exit
                         fi
                    fi
                fi
            fi
         fi
    fi
fi
DIR="$(dirname "${ruta}")" ; FILE="$(basename "${ruta}")" # Separa en el caso de existir la ruta y el nombre del fichero
[[ -c $ruta ]] && { echo "El fichero existe y es de tipo Carater" && file $ruta && cd $DIR && ls -l && exit; }
[[ -h $ruta ]] && { echo "El fichero existe y es de tipo Link" && file $ruta && cd $DIR && ls -l && exit; }
[[ -f $ruta ]] && { echo "El fichero existe y es de tipo Normal" && file $ruta && cd $DIR && ls -l && exit; }
[[ -b $ruta ]] && { echo "El fichero existe y es de tipo Bloque" && file $ruta && cd $DIR && ls -l && exit; }
[[ -S $ruta ]] && { echo "El fichero existe y es de tipo Socket" && file $ruta && cd $DIR && ls -l && exit; }
[[ -p $ruta ]] && { echo "El fichero existe y es de tipo Pipeline" && file $ruta && cd $DIR && ls -l && exit; }
[[ -d $ruta ]] && { echo "Es un directorio" && file $ruta && cd $DIR && ls -l && exit;}




