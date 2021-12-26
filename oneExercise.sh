
#!/bin/bash

#Escribid un script en Bash que acepte una ruta a un fichero o un directorio e imprima por pantalla si es un fichero normal, 
#un directorio u otro tipo de fichero. Finalmente, el script ejecutará el comando ls sobre esta ruta en formato largo

read -p "Ingrese la ruta del fichero o carpeta: " ruta # Ingreso por consola
echo "La ruta ingresada es : " $ruta

#ruta='/home/pegasi/Documents/contratoarrendamiento.docx'
#ruta='/dev/log'
#ruta='/run/systemd/journal/socket'
#ruta='/home/pegasi/Documents/IMG_E2328.JPG'
#ruta='/dev'
#ruta='/dev/sda'
#ruta='/dev/zero'

if [ ! -d "$ruta" ]; then  # Comprueba si la ruta corresponde a un fichero del tipo directorio
    if [ ! -f "$ruta" ]; then # Comprueba si la ruta corresponde a un fichero
         if [ ! -c "$ruta" ]; then # Comprueba si la ruta corresponde a un fichero del tipo caracter
             if [ ! -b "$ruta" ]; then # Comprueba si la ruta corresponde a un fichero del tipo bloque
                if [ ! -L "$ruta" ]; then # Comprueba si la ruta corresponde a un fichero del tipo Link simbólico
                    if [ ! -S "$ruta" ]; then # Comprueba si la ruta corresponde a un fichero del tipo socket
                        if [ ! -p "$ruta" ]; then # Comprueba si la ruta corresponde a un fichero del tipo pipeline
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
echo "[${FILE}]"
echo "[${DIR}]"
[[ -c $ruta ]] && { echo "El fichero existe y es de tipo Carater" && file $ruta && cd $DIR && ls -l && exit; }
[[ -h $ruta ]] && { echo "El fichero existe y es de tipo Link" && file $ruta && cd $DIR && ls -l && exit; }
[[ -f $ruta ]] && { echo "El fichero existe y es de tipo Normal" && file $ruta && cd $DIR && ls -l && exit; }
[[ -b $ruta ]] && { echo "El fichero existe y es de tipo Bloque" && file $ruta && cd $DIR && ls -l && exit; }
[[ -S $ruta ]] && { echo "El fichero existe y es de tipo Socket" && file $ruta && cd $DIR && ls -l && exit; }
[[ -p $ruta ]] && { echo "El fichero existe y es de tipo Pipeline" && file $ruta && cd $DIR && ls -l && exit; }
[[ -d $ruta ]] && { echo "Es un directorio" && file $ruta && cd $DIR && ls -l && exit;}




