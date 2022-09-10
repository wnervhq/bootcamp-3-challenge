#!/bin/bash

# Crear contenedor Nginx 
echo -e "$lightRed'Crear contenedor Nginx:'$endMod $containerName" 
docker build -f $dockerFile  -t $imageTag .

# Levantar contenedor en segundo plano
echo -e "$lightRed'Levantar contenedor en segundo plano: \
        '$endMod $containerName" 
docker run -d --name $containerName -p $containerPort $imageTag 

# Lista contenido de la carpeta html del contenedor
echo -e "$lightRed'Lista contenido de la carpeta html \
        del contenedor:'$endMod $containerName" 
docker exec -it $containerName ls /usr/share/nginx/html

# Enlace web con el puerto personalizado
echo -e "$lightRed'Enlace web con el puerto personalizado'$endMod" 
echo "http://localhost:9999"