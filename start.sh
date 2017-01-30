#!/bin/bash

# Start Gunicorn Processes
echo Starting Gunicorn...
exec gunicorn dweb_server.wsgi:application \
    --bind localhost:8000 \
    --workers 3
