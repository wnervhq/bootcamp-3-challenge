#!/bin/bash

# Creacion y comprobacion archivo Dockerfile 
echo -e "$lightRed'Creacion y comprobacion archivo Dockerfile'$endMod" 
fileName="Dockerfile"
validFile=$currentDir/$fileName

if [ -f "$validFile" ]; then
    echo -e "el archivo$lightRed $fileName $endMod ya se encuentra creado"
    echo "con la siguiente data:"
    echo ""
    cat $fileName
    echo ""
    echo ""
else
    echo -e "$lightRed $fileName $endMod no existe se procedera a crear y agregar contenido"
    echo "FROM $imageBase
    COPY /src/index.html /usr/share/nginx/html" >> $fileName
    echo ""
    cat $fileName
    echo ""
    echo ""
fi