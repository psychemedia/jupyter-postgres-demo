#!/bin/bash
set -e

PGDATA=${PGDATA:-/home/jovyan/srv/pgsql}
/usr/lib/postgresql/10/bin/initdb -D "$PGDATA" --auth-host=md5 --encoding=UTF8


nohup /usr/lib/postgresql/10/bin/pg_ctl -D /var/lib/postgresql/10/main -l logfile start  > /dev/null 2>&1 &


#echo redspot | sudo -S service postgresql start

psql postgres -c "CREATE USER test WITH PASSWORD 'testpass';"

createdb -O test test

exec "$@"
