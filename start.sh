#!/bin/sh
set -ex
python3 manage.py makemigrations onlinecourse
python3 manage.py sqlmigrate onlinecourse 0001
python3 manage.py migrate
python3 manage.py collectstatic --noinput
python3 write.py
python3 manage.py runserver 0.0.0.0:8000