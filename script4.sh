#!/bin/bash
# Escribid un script que copie un archivo sobre otro, garantizando que solo reciba dos parámetros.
clear
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
echo

if (($# == 2)); then
    [[ -f $1 ]] && { echo "El archivo 1 existe"; } || { echo "El archivo 1 ingresado como parametro no existe, no se realiza ninguna acción" && exit;} #comprueba si el archivo 1 existe en el ditectorio donde se ejecuta el script
    [[ -f $2 ]] && { echo "El archivo 2 existe"; } || { echo "El archivo 2 ingresado como parametro no existe, no se realiza ninguna acción" && exit;} #comprueba si el archivo 2 existe en el ditectorio donde se ejecuta el script
    cp -f $1 $2
    echo
    echo "Archivo $2 remplazado por $1"
else
    echo "Se deben ingresar dos parametros los cuales corresponden a los archivos"
fi
