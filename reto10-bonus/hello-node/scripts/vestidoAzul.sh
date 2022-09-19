#!/bin/sh

# El script para esperar todo
# hecho e inspirado mientras escuchaba 
# Mi vestido azul - Floricienta... xD
#
# 18/09/22
## 
# cmd="$@"

echo "primero esperamos la bd"
until /opt/hello-node/scripts/wait-for.sh $MYSQL_HOST:$MYSQL_PORT -- /opt/hello-node/scripts/wait-for-mysql.sh; do
    >&2 echo "esperando bd aun no se encuentra lista"
    sleep 1
done
>&2 echo "bd comprobadas"

until /opt/hello-node/scripts/wait-for.sh $RABBITMQ_HOST:$RABBITMQ_PORT -- echo 'conejo listo!';do
    >&2 echo "esperando conejo blanco"
    sleep 1
done
>&2 echo "conejo y bd listos"

echo "inicializar app"
npm start

