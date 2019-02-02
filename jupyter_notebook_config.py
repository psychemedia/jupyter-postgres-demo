c.ServerProxy.servers = {
    'franchise': {
        'command': ['cd', 'franchise/bundle', '&&','python','-m', 'http.server', '{port}'],
        #'port': 8088,
        'timeout': 120,
        'launcher_entry': {
            'enabled': True,
            #'icon_path': '/home/jovyan/.jupyter/franchise-logo.svg',
            'title': 'Franchise',
        },
    },
}
