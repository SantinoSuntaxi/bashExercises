#!/bin/bash

if (($# == 2)); then
    echo "Valido"
else
    cp -f ./archivo2 ./archivo1
    echo "Solo se permiten dos parametro "
fi
