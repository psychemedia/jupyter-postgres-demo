#!/bin/bash

source activate python2
exec /opt/omero/server/OMERO.server/bin/omero "$@"
