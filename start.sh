#!/bin/bash

#echo Running Collectstatic. 
#exec python /app/manage.py collectstatic --noinput

#echo Running Migrate. 
#exec python /app/manage.py migrate

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn helloworld.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --reload # Esse parametro --reload nao pode ir para producao
