#!/bin/bash

# Wait for Postgres server to spin up
sleep 10

# Prepare migrations
su -m myuser -c "./manage.py makemigrations"

#Run migrations to ensure our DB schema is up to date.
su -m myuser -c "./manage migrates"

# Run gunicorn - REPLACE {project} WITH APPROPRIATE NAME
su -m myuser -c "gunicorn {project}.wsgi -w 5 -b :9000"
