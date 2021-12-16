#!/bin/bash

# Start Application
echo "Start Application"
# Env=$(cat /tmp/env.txt)
cd /var/www/disquaire
pip3 install -r requirements.txt
python3 manage.py runserver 0.0.0.0:8000 > /dev/null 2>&1 &

