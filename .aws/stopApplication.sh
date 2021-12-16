#!/bin/bash

# Stop Application
echo "Stop Application"
# Env=$(cat /tmp/env.txt)
kill $(ps aux | grep runserver | awk '{print $2}')
rm -rf /var/www/diquaire
