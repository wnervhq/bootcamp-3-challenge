#!/bin/bash

# Crear contenedor
echo -e "$lightRed'Crear contenedor:'$endMod $nameContainer" 
docker run -d --name $nameContainer \
    -v $volumeContainer:/home/node/app/ \
    -p $portContainer:4000 $nameImageContainer