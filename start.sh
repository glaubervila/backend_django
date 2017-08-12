#!/bin/bash


python manage.py migrate                  # Apply database migrations

echo Running Collectstatic. 
python manage.py collectstatic --noinput  # Collect static files





# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn helloworld.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --reload # Esse parametro --reload nao pode ir para producao
