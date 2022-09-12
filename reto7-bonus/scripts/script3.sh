#!/bin/bash
# Mostrar enlace web y contenido mes.php
echo -e "$lightRed'Mostrar enlace web:'$endMod mes.php"  

echo -e "${ligthGreen} http://localhost:8000/mes.php ${endMod}"
echo ""

echo usando 'docker exec' para mostrar el contenido del archivo en el contenedor
echo -e "${blue}docker exec -it web cat mes.php${endMod}"
docker exec -it web cat mes.php
echo ""

echo usando 'curl' sobre enlace web para ver contenido
echo -e "${ligthGreen}curl http://localhost:8000/mes.php${endMod}"
curl http://localhost:8000/mes.php
echo ""