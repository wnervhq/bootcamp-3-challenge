#!/bin/bash
# Mostrar enlace web y contenido index.html
echo -e "$lightRed'Mostrar enlace web:'$endMod index.html"  

echo -e "${ligthGreen} http://localhost:8000/ ${endMod}"
echo ""

echo usando 'docker exec' para mostrar el contenido del archivo en el contenedor
echo -e "${blue}docker exec -it web cat index.html${endMod}"
docker exec -it web cat index.html
echo ""

echo usando 'curl' sobre enlace web para ver contenido
echo -e "${ligthGreen}curl http://localhost:8000/${endMod}"
curl http://localhost:8000/