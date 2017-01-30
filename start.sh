#!/bin/bash

# Start Gunicorn Processes
cd dweb_server
echo Starting Gunicorn...
exec gunicorn dweb_server.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3
