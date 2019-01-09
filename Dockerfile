FROM jupyter/base-notebook

USER jovyan
RUN pip install --no-cache ipython-sql psycopg2 pandas

USER root
RUN apt-get update && \
    apt-get install -qq -y \
        postgresql postgresql-client && \
    chown jovyan /run/postgresql/


COPY ./initialise.sh /home/jovyan/
RUN chmod +x /home/jovyan/initialise.sh

#RUN echo "local all all trust" > /etc/postgresql/10/main/pg_hba.conf
#RUN echo "host all all ::1/128 trust" >> /etc/postgresql/10/main/pg_hba.conf

RUN echo "jovyan ALL=(ALL)   ALL" >> /etc/sudoers
#jadmin ALL=/sbin/halt, /bin/kill, /etc/init.d/httpd
#jadmin ALL= NOPASSWD: /sbin/halt

RUN echo "jovyan:redspot" | chpasswd

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

USER jovyan
#RUN /home/jovyan/initialise.sh

USER root
RUN chown -R postgres:postgres /var/run/postgresql

USER jovyan
ENTRYPOINT ["/entrypoint.sh"]

USER jovyan
