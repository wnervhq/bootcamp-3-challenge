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
    
    echo "FROM node:alpine
    LABEL manteiner="LAMC"
    LABEL project="hello-bootcamp"
    WORKDIR /app
    COPY hello-bootcamp/package.json ./
    RUN npm install
    COPY /hello-bootcamp .
    EXPOSE 4000
    USER node
    CMD ["npm","start"]" >> $fileName
    
    echo "FROM $imageBase
    COPY /hello-bootcamp/ /home/node/app/" >> $fileName
    echo ""
    cat $fileName
    echo ""
    echo ""
fi