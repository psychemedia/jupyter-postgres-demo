# Traitlet configuration file for jupyter-notebook.

c.ServerProxy.servers = {
    # We're autostarting the postgres server, and using a hardwired, unexposed port, so we don't need to declare this
    #'postgres': {
    #    'command': ['pg_ctl', '-D', '"${PGDATA:-/home/jovyan/srv/pgsql}"','-l','"${PGDATA:-/home/jovyan/srv/pgsql}/pg.log"','restart'],
    #    'timeout': 120,
    #    'launcher_entry': {
    #        #We're autorunning postgres as a headless service
    #        'enabled': False,
    #        #'icon_path': '/home/jovyan/.jupyter/postgresql-logo.svg',
    #        #'title': 'PostgreSQL',
    #    },
    #},
    'pgadmin': {
        #Set the port for pgadmin dynamically
        'command': [
            'uwsgi',
            '--http',
            ':{port}',
            '--mount',
            '{base_url}pgadmin=pgAdmin4.wsgi',
            '--chdir',
            '/srv/conda/lib/python3.6/site-packages/pgadmin4',
            '--manage-script-name',
        ],
        'timeout': 120,
        #'port': 5050,
        'launcher_entry': {
            'enabled': True,
            'icon_path': '/home/jovyan/.jupyter/postgresql-logo.svg',
            'title': 'pgAdmin',
        },
    },
}
