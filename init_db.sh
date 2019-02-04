#!/bin/bash
set -eux

THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Demo PostgreSQL Database initialisation
psql postgres -c "CREATE USER test PASSWORD 'testpass'"
#The -O flag below sets the user: createdb -O DBUSER DBNAME
createdb -O test testdb

psql -d testdb -U test -f $THISDIR/seed_db.sql
