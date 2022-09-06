#!/bin/bash

# Creacion y comprobacion de estado contenedor
echo -e "$lightRed'Creacion y comprobacion de estado contenedor'$endMod"
docker run -d \
    --name $nameContainer \
    --env MARIADB_ROOT_PASSWORD=root \
    --env MARIADB_DATABASE=prueba \
    --env MARIADB_USER=invitado \
    --env MARIADB_PASSWORD=invitado \
    -p $portContainer:3306 $imageBase

echo -e "$lightRed'estado contenedor'$endMod"
docker ps