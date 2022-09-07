 #!/bin/bash 
  
 # Crear contenedor 
 echo -e "$lightRed'Crear contenedor:'$endMod $nameContainer"  
 docker run -d --name $nameContainer \
     -v static_content:/usr/share/nginx/html \
     -p $portContainer:80 $nameImageContainer