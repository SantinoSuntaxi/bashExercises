#!/bin/bash

# Script que renombra todos los ficheros con extensión JPG del directorio actual, añadiendo 
# un prefijo con la fecha en formato año, mes, día. Por ejemplo, un fichero con nombre imagen1.jpg 
# pasaría a llamarse 20200413-image1.jpg, si el script se ejecuta el 13 de abril de 2020.
clear
echo -e '\e[1;32m';
echo " Integrantes:   > Pedro Santino Suntaxi Cocanguilla"
echo "                > Washingtong David Pena Sanchez"
echo "                > David Chimbo Vega                     "
echo "                > Gabriel Hernan Mafla Cabascango"
echo -e '\e[m';
echo
echo
echo -e '\e[1;32m';
echo "Continue o pulse Cntrl+C para omitir"
echo "Introduce un valor para empezar con el renombrado ej '1' , '2' , ... , '10'"
echo -e '\e[m';
read valor
 
echo -e '\e[1;32m';
for fichero in  `ls *.jpg`   `ls *.JPG`
do
	echo "FICHEROS originales: " $fichero
	mv $fichero  $(date +%Y)$(date +%m)$(date +%d)"-"${fichero%.*}"-"$valor.jpg
	let valor++
done
echo -e '\e[m';
echo
echo "FICHEROS RENOMBRADOS: " 
 
for fichero in `ls *.jpg`
do
echo " > " $fichero
done
