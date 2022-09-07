#!/bin/bash

#Contruir imagen del contenedor
echo -e "$lightRed'Contruir imagen del contenedor:'$endMod $nameImageContainer" 
docker build -t $nameImageContainer .