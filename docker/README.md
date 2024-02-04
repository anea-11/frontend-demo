# What does this Docker image do

1. `populate-templates.sh` is executed when nginx container starts; it populates index webpage with backend (encoding) service's URL
2. URL should be provided through environment variables when running Docker container. See main README for more details. Example:
    ```
        docker run --name frontend-service \
            -p8080:80 \
            -e WEBSERVER_HOSTNAME=123.123.123.123 \
            -e WEBSERVER_PORT=8080 \
            -e ENCODING_ENDPOINT=encode \
            -d \
            frontend-service-img:latest
    ```
3. Once it's up, docker image serves index webpage and is used as a reverse proxy to access the backend service