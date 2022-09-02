#!/bin/bash

# Creando el contenedor
echo -e "$lightRed'Creando el contenedor'$endMod"
docker run -d --name $nameContainer -p $portContainer:80 $imageBase

# Visualizamos los contenedores en ejecucion
echo -e "$lightRed'Visualizamos los contenedores en ejecucion'$endMod"
docker ps

# Comprobamos la conectividad al contenedor
# Usando comando curl 
echo -e "$lightRed'Comprobamos la conectividad al contenedor usando comando curl'$endMod"
curl localhost:$portContainer