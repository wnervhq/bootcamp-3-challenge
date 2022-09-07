#!/bin/bash -x

#Inspeccionar la imagen
echo -e "$lightRed'Mostrar cuantas capas tiene la imagen:'$endMod $nameImageContainer" 
FILTER='first | .RootFS | .Layers | length'

echo $(docker inspect ${nameImageContainer} | jq -r "${FILTER[@]}")