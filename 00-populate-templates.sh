#!/bin/bash

# Defaults
hostname="localhost"
port="8080"
endpoint="encode"


if [ -n "$WEBSERVER_HOSTNAME" ]; then
  hostname=$WEBSERVER_HOSTNAME
fi

if [ -n "$WEBSERVER_PORT" ]; then
  port=$WEBSERVER_PORT
fi

if [ -n "$ENCODING_ENDPOINT" ]; then
  endpoint=$ENCODING_ENDPOINT
fi

template_file="/templates/index.html.template"

sed -i "s/<<template_hostname>>/$hostname/g" "$template_file"
sed -i "s/<<template_port>>/$port/g" "$template_file"
sed -i "s/<<template_endpoint>>/$endpoint/g" "$template_file"

mv "$template_file" /usr/share/nginx/html/index.html

echo "Index page prepared"
