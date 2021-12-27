#!/bin/bash

#scribid un script que ejecute cierta acción en función de la extensión de un archivo que recibe como parámetro. Si se trata de un JPG, 
#copiar dicho archivo en la carpeta ~/fotos. Si resulta ser de otro formato, avisar al usuario sin hacer nada.

file=$1  # Guarda el parametro ingresado por consola
dir="${PWD}/$1"  #Guarda la ruta del fichero
echo $dir  
[[ -f $dir ]] && { echo "El fichero existe"; } || { echo "El archivo ingresado como parametro no existe, no se realiza ninguna acción" && exit;} #comprueba si el fichero existe en el ditectorio donde se ejecuta el script
case $(file -b $file) in  #Valida si el fichero es del tipo JPG
  'JPEG '*)
    echo "El fichero corresponde a uno de tipo JPG"
    cp $file ~/fotos   #Copia el fichero JPG a directorio ~/fotos
    echo "Fichero JPG copiado al directorio ~/fotos"
    ;;
  *)
    echo "El fichero no tiene extensión JPG no se realiza ninguna acción"
    ;;
esac
