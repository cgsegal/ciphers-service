#!/bin/ash

echo "Apply migrations"

cd ./ciphers_project
python manage.py migrate
python manage.py runserver 0.0.0.0:8000

exec"$@"