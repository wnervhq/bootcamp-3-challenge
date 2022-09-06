#!/bin/bash

# Eliminar contenedor (intentar...)
echo -e "$lightRed'Eliminar imagen base (intentar...)'$endMod"
docker rmi $imageBase

echo -e "$lightRed'visualizamos que se hace referencia a la imagen que se encuentra vinculada'$endMod"
echo -e "$lightRed'motivo por el cual no podemos borrar la imagen'$endMod"
docker ps 
