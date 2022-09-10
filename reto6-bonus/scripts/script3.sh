#!/bin/bash

#Detener todos los contenedores
echo -e "$lightRed'Detener y eliminar contenedores levantados por docker-compose'$endMod" 
docker-compose down

echo -e "$lightRed'Detener contenedor Nginx'$endMod" 
docker stop $containerName

echo -e "$lightRed'Eliminar contenedor Nginx'$endMod" 
docker rm $containerName

echo -e "$lightRed'Ejecutar comando para listar Contenedores'$endMod" 
docker ps -a