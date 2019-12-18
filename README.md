-- ARCHIVED: USE https://github.com/ouseful-template-repos/binder-postgres INSTEAD --

# jupyter-postgres-demo

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/psychemedia/jupyter-postgres-demo/master)

Demo of launching a binderhub notebook server with a free running Postgres server.

Postgres is installed via Anaconda; the databases is initialised into  `/srv/conda/pgsql` (the `/src/conda` (and if it exists `/srv/npm`) path is the only writeable path outside of `$HOME`).

The `init_db/postgres/init.db` file is called to set up any required users, databases, etc, and it in turn seeds a test database as defined in `init_db/postgres/seed_db.sql`. The `init_db` directory is also copied into `/srv/conda` so the user can check on the initialisation set-up if required.  


Example via [@manics on Jupyter dscourse site](https://discourse.jupyter.org/t/running-arbitrary-services-alongside-jupyter-notebooks-in-binderhub/299/10?u=psychemedia) [[gist](https://gist.github.com/manics/e1392b4368cff1b92c362f121215ce84)].

See the other branches for versions that do, albeit at the expense of using a Dockerfile.


