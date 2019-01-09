# docker-stacks are Copyright (c) Jupyter Developer Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/datascience-notebook

#Based on an original Dockerfile by Daniel Chudnov <dchud@umich.edu>
#https://github.com/dchud/datamanagement-notebook/blob/master/Dockerfile

USER root

RUN apt-get update && apt-get install -y postgresql postgresql-client && apt-get clean

#RUN echo "local all all trust" > /etc/postgresql/9.6/main/pg_hba.conf
#RUN echo "host all all ::1/128 trust" >> /etc/postgresql/9.6/main/pg_hba.conf

RUN chown -R postgres:postgres /var/run/postgresql
RUN echo "jovyan ALL=(ALL)   ALL" >> /etc/sudoers
RUN echo "jovyan:redspot" | chpasswd

USER postgres
#Set $NB_USER up with a database.
RUN service postgresql restart \
  && createuser --superuser $NB_USER \
  && createdb $NB_USER $NB_USER


#Check things work, create a test database
USER $NB_USER
#We have to start the postgresql service either as user postgres or as root
RUN echo redspot | sudo -S service postgresql restart \
    && psql $NB_USER -c "CREATE USER test WITH PASSWORD 'testpass';" \
    && createdb -O test test


USER root
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

USER $NB_USER

COPY *.ipynb ./

# Postgresql python library
RUN pip install --no-cache psycopg2

# SQL support for ipython
RUN pip install --no-cache ipython-sql


ENTRYPOINT ["/entrypoint.sh"]
