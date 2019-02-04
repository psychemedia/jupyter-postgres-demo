# jupyter-postgres-demo

**pgadmin demo has moved to `pgadmin` branch**

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/psychemedia/jupyter-postgres-demo/server-proxy)

Demo of launching a binderhub notebook server with a free running Postgres server.

There is a test db set up for user `testuser` and password `testpass`.



The `init.db` file is called to set up any required users, databases, etc, and it in turn seeds a test database as defined in `seed_db.sql`.


Original example via [@manics on Jupyter dscourse site](https://discourse.jupyter.org/t/running-arbitrary-services-alongside-jupyter-notebooks-in-binderhub/299/10?u=psychemedia) [[gist](https://gist.github.com/manics/e1392b4368cff1b92c362f121215ce84)].

See the other branches for versions that do, albeit at the expense of using a Dockerfile.


