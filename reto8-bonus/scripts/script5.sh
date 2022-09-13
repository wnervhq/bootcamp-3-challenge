#!/bin/bash

# "Verificar el contenedor desplegado"
echo -e "${lightRed}'Verificar el contenedor desplegado:'${endMod}"  
read -t 3 -p "Presiona ENTER para continuar o espera 3 segundos"
echo -e "abre el siguiente enlace en el navegador ${ligthGreen}http://localhost:${portContainerWeb}${endMod}"
echo -e "${ligthGreen}curl localhost:${portContainerWeb}${endMod}"
curl localhost:${portContainerWeb}
        