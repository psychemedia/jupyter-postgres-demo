FROM jupyter/minimal-notebook

USER root
RUN  apt-get update && \
    apt-get install -qq -y \
        postgresql postgresql-client && apt-get clean && \
    chown jovyan /run/postgresql/

COPY ./entrypoint.sh  /
RUN chmod +x /entrypoint.sh



USER jovyan

COPY *.ipynb ./

RUN pip install --no-cache psycopg2 pandas ipython-sql

ENV JUPYTER_ENABLE_LAB=1
ENTRYPOINT ["/entrypoint.sh"]
