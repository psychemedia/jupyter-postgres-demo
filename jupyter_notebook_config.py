# Configuration file for jupyter-notebook.

c.ServerProxy.servers = {
    'omeroweb': {
        'command': ['/home/jovyan/postgres-web-proxy.sh', '{port}', '{base_url}'],
        'timeout': 120,
        'launcher_entry': {
            'enabled': True,
            'icon_path': '/home/jovyan/.jupyter/postgresql-logo.svg',
            'title': 'Postgres',
        },
    },
}
