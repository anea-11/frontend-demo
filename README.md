# frontend-demo

# Docker
Example run command:

docker run --name frontend-service \
    -p8080:80 \
    -e WEBSERVER_HOSTNAME=123.123.123.123 \
    -e WEBSERVER_PORT=8080 \
    -e ENCODING_ENDPOINT=encode \
    -d encoder-x265-img:latest

Docker image uses environment variables to set the encoding URL on index webpage served by nginx.
WEBSERVER_HOSTNAME - public IP or dns name of the machine on which nginx container is running
WEBSERVER_PORT - must be the same as host port (8080 in this example)
ENCODING_ENDPOINT - must match the proxy pass for encoding service defined in nginx.conf (location /encode in this example)

If env var is not set, default is used:
WEBSERVER_HOSTNAME=localhost
WEBSERVER_PORT=8080
ENCODING_ENDPOINT=encode

