#!/bin/bash

# Detenemos el contenedor
echo -e "$lightRed'Deteniendo contenedor de nombre:'$endMod" $nameContainer
docker stop $nameContainer

# Eliminamos el contenedor
echo -e "$lightRed'Eliminando contenedor de nombre:'$endMod" $nameContainer
docker rm $nameContainer

# Verificando que ya no existe el contenedor
echo -e "$lightRed'Verificacion de contenedores en ejecucion'$endMod"
docker ps -a