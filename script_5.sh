#!/bin/bash

# Escribid un script que renombre todos los ficheros con extensión JPG del directorio actual, añadiendo 
# un prefijo con la fecha en formato año, mes, día. Por ejemplo, un fichero con nombre imagen1.jpg 
# pasaría a llamarse 20200413-image1.jpg, si el script se ejecuta el 13 de abril de 2020.

#!/bin/bash
clear
echo "Script para renombramiento masivo de archivos"
echo "Continue o pulse Cntrl+C para omitir"
sleep 5
echo
echo
echo "Introduce la extensión de los archivos"
read extt
echo "Introduce un nombre para el renombrado 'ej Foto'"
read nombre
echo "Introduce un valor para empezar con el renombrado ej '10'"
read valor
 
for fichero in `ls *.$extt`
do
	mv $fichero $nombre$valor.jpg
	let valor++
done
 
echo "FICHEROS RENOMBRADOS:"
 
for fichero in `ls *.$extt`
do
echo $fichero
done
