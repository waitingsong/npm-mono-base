#!/bin/bash
set -e

psql -V
# netstat -tunpl
# dig postgres

psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U$POSTGRES_USER -d $POSTGRES_DB -c "SELECT version();"

echo -e "\n"

# SQL_DIR='./packages/demo/database/'

# cd "$SQL_DIR"
# pwd
# . ./init-db.sh

psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U$POSTGRES_USER -d $POSTGRES_DB -c "SHOW TIMEZONE;"
psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U$POSTGRES_USER -d $POSTGRES_DB -c "SELECT extname, extversion FROM pg_extension;"
psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U$POSTGRES_USER -d $POSTGRES_DB -c "\d+"
echo "\l" | psql -h $POSTGRES_HOST -p $POSTGRES_PORT -U$POSTGRES_USER -d postgres

# cd -

