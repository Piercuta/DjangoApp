#!/bin/bash

# Stop Application
echo "Stop Application"
kill -9 'sudo lsof -t -i:8000'
rm -rf /var/www/diquaire
