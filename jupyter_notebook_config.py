# Traitlet configuration file for jupyter-notebook.

c.ServerProxy.servers = {
    'postgres': {
        'command': ['pg_ctl', '-D', '"${PGDATA:-/home/jovyan/srv/pgsql}"','-l','"${PGDATA:-/home/jovyan/srv/pgsql}/pg.log"','restart'],
        'timeout': 120,
        'launcher_entry': {
            'enabled': True,
            'icon_path': '/home/jovyan/.jupyter/postgresql-logo.svg',
            'title': 'PostgreSQL',
        },
    },
}
