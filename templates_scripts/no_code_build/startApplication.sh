#!/bin/bash

# Start Application
echo "Start Application"
# Set var env
DbUser=$(cat /tmp/db_user.txt)
DbPassword=$(cat /tmp/db_password.txt)
DbHost=$(cat /tmp/db_host.txt)
# Restore sql backup
cd /var/www/disquaire
mysql -h $DbHost -u admin -pCoucou123! < DumpDjangoDb.sql 
# Replace db conf in django project
sed -i "s#db_user#${DbUser}#g" disquaire_project/settings.py
sed -i "s#db_password#${DbPassword}#g" disquaire_project/settings.py
sed -i "s#db_host#${DbHost}#g" disquaire_project/settings.py
# Start project
pip3 install -r requirements.txt
python3 manage.py runserver 0.0.0.0:8000 > /dev/null 2>&1 &

