#!/bin/bash
set -e

echo redspot | sudo -S service postgresql start

exec "$@"
