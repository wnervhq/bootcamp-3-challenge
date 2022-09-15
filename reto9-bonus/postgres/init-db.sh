#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER $POSTGRES_USER_APP WITH PASSWORD '$POSTGRES_PASSWORD_APP';
    CREATE DATABASE $POSTGRES_DB_APP;
    GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DB_APP TO $POSTGRES_USER_APP;
    
    \c $POSTGRES_DB_APP

    CREATE TABLE tabla (
        id integer NOT NULL,
        nombre varchar(24),
        detalle varchar(64)
    );

    INSERT INTO tabla VALUES(1, 't1', 'Tabla 1');
    INSERT INTO tabla VALUES(2,'t2' , 'Tabla 2');
    
    
    ALTER DEFAULT PRIVILEGES IN SCHEMA public
    GRANT SELECT ON TABLES TO $POSTGRES_USER_APP;
    GRANT SELECT ON ALL TABLES IN SCHEMA public TO $POSTGRES_USER_APP;

EOSQL