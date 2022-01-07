#!/bin/bash

# Start Application
echo "Start Application"
echo "Sleep 30 s"
sleep 30
# Set var env
DbUser=$(cat /tmp/db_user.txt)
DbPassword=$(cat /tmp/db_password.txt)
DbHost=$(cat /tmp/db_host.txt)
# Restore sql backup
cd /var/www/disquaire
mysql -h $DbHost -u admin -pCoucou123! < sql_backup/DumpDjangoDb.sql 
# Replace db conf in django project
sed -i "s#db_user#${DbUser}#g" disquaire_project/settings.py
sed -i "s#db_password#${DbPassword}#g" disquaire_project/settings.py
sed -i "s#db_host#${DbHost}#g" disquaire_project/settings.py
# Start project
# Nginx Conf
cd /etc/nginx/sites-available/
echo "server {
        server_name_;
		
        location / {
            proxy_pass http://0.0.0.0:8000;
        }
		
		location /static/ {
			alias /var/www/disquaire/disquaire_project/static/;
		}
    }" > django.conf
ln django.conf /etc/nginx/sites-enabled/
nginx -t
cd /var/www/disquaire
# gunicorn inside requirements.txt
pip3 install -r requirements.txt

python3 manage.py collectstatic
service nginx start
service nginx stop
service nginx restart
# Start application
gunicorn --bind 0.0.0.0:8000 disquaire_project.wsgi:application > /dev/null 2>&1 &