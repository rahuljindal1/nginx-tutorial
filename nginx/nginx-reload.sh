#!/bin/bash

# Start nginx initially in the background
nginx -g 'daemon on;'

# Watch for changes in the nginx.conf file and restart Nginx
while true; do
  inotifywait -e modify,create,delete,move /etc/nginx/nginx.conf /etc/nginx/conf.d
  echo "Reloading Nginx..."
  nginx -s reload
done
