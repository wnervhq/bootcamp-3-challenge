#!/bin/sh
# host="$1"
shift
# cmd="$@"
until mysql -h ${MYSQL_HOST} -P ${MYSQL_PORT} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DB} -e 'select 1'; do
  >&2 echo "MySQL not ready!!! - I'll be back"
  sleep 4
done
>&2 echo "Mysql is functional!! - let´s rock!!!"
# exec $cmd