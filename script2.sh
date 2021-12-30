#!/bin/bash
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
#scribid un script que ejecute cierta acción en función de la extensión de un archivo que recibe como parámetro. Si se trata de un JPG, 
#copiar dicho archivo en la carpeta ~/fotos. Si resulta ser de otro formato, avisar al usuario sin hacer nada.

file=$1  # Guarda el parametro ingresado por consola
dir="${PWD}/$1"  #Guarda la ruta del fichero
echo $dir  
[[ -f $dir ]] && { echo "El fichero existe"; } || { echo "El archivo ingresado como parametro no existe, no se realiza ninguna acción" && exit;} #comprueba si el fichero existe en el ditectorio donde se ejecuta el script
if [ "${file##*.}" = "jpg" ] || [ "${file##*.}" = "JPG" ]  ; then #realiza la comparacion de la extencion del archivo
       # operation for txt files here
       echo "El fichero corresponde a uno de tipo JPG"
       cp $file ~/fotos   #Copia el fichero JPG a directorio ~/fotos
       echo "Fichero JPG copiado al directorio ~/fotos"
else
      echo "El fichero no tiene extensión JPG no se realiza ninguna acción"
fi