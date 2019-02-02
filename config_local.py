#via https://linuxhint.com/install-pgadmin4-ubuntu/
import os
# Use visible directory so we can browse it in jupyter
DATA_DIR = os.path.realpath(os.path.expanduser(u'~/pgadmin/'))
LOG_FILE = os.path.join(DATA_DIR, 'pgadmin4.log')
SQLITE_PATH = os.path.join(DATA_DIR, 'pgadmin4.db')
SESSION_DB_PATH = os.path.join(DATA_DIR, 'sessions')
STORAGE_DIR = os.path.join(DATA_DIR, 'storage')
SERVER_MODE = False
DEFAULT_SERVER = '0.0.0.0'
#DEFAULT_SERVER_PORT = 5050
DEBUG = True
import logging
FILE_LOG_LEVEL = logging.DEBUG
