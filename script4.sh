#!/bin/bash

if (($# == 2)); then
    cp -f ./archivo2 ./archivo1
    echo "Archivo remplazado"
else
    echo "Solo se permiten dos parametro "
fi
