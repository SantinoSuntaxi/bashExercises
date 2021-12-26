#!/bin/bash

#scribid un script que ejecute cierta acción en función de la extensión de un archivo que recibe como parámetro. Si se trata de un JPG, 
#copiar dicho archivo en la carpeta ~/fotos. Si resulta ser de otro formato, avisar al usuario sin hacer nada.

#echo $1
file=$1
dir="${PWD}/$1"
echo $dir
#for file in *; do echo "$file : ${file##*.}"; done
[[ -f $dir ]] && { echo "El fichero existe y es de tipo Normal" && echo "hola"; } || { echo "El archivo ingresado como parametro no existe, no se realiza ninguna accion" && exit;}
case $(file -b $file) in
  'JPEG '*)
    echo is
    ;;
  *)
    echo is not
    ;;
esac
